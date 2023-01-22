class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:profile]
  def index
    # user dashboard - post feed
    @posts = Post.active
  end

  def profile
    #profile
    @post = @account.posts.active
  end

  def follow_account
    follow_id = params[:follow_id]
    Follower.create(follower_id: current_account.id, following_id: follow_id)

    redirect_to dashboard_path
  end

  private

  def set_account
    @account = Account.find_by_username(params[:username])
  end

end
