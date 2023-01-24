class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:profile]
  def index
    # user dashboard - post feed
    followers_ids = Follower.where(follower_id: current_account.id).map(&:following_id)
    followers_ids << current_account.id

    @posts = Post.includes(:account).where(account_id: followers_ids)

    #@posts = Post.all

    @comment = Comment.new

  end

  def profile
    #profile
    @post = @account.posts.active
  end

  def follow_account
    follow_id = params[:follow_id]
    Follower.create(follower_id: current_account.id, following_id: follow_id)

    redirect_to profile_path(Account.find(follow_id).username)
  end

  def unfollow_account
    follow_id = params[:following_id]
    existing_follow = Follower.where(follower_id: current_account.id, following_id: follow_id)
    existing_follow.first.destroy

    redirect_to profile_path(Account.find(follow_id).username)
  end

  private

  def set_account
    @account = Account.find_by_username(params[:username])
  end

end
