class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:profile]

  def index
    # user dashboard - post feed
    followers_ids = Follower.where(follower_id: current_account.id).map(&:following_id)
    followers_ids << current_account.id

    @posts = Post.includes(:account).where(account_id: followers_ids)

    # @posts = Post.all

    @comment = Comment.new

  end

  def profile
    #profile
    @post = @account.posts

    @comment = Comment.new
  end

  def follow_account
    follow_id = params[:follow_id]
    Follower.create(follower_id: current_account.id, following_id: follow_id)

    redirect_back(fallback_location: root_path)
  end

  def unfollow_account
    follow_id = params[:following_id]
    existing_follow = Follower.where(follower_id: current_account.id, following_id: follow_id)
    existing_follow.first.destroy

    redirect_back(fallback_location: root_path)
  end

  def search
    @q = Account.ransack(params[:q])
    @accounts = @q.result(distinct: true)
  end

  private

  def set_account
    @account = Account.find_by_username(params[:username])
  end

end
