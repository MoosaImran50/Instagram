class PostsController < ApplicationController
  before_action :authenticate_account!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.account_id = current_account.id if account_signed_in?
    if @post.save
      redirect_to dashboard_path
    else
      redirect_to new_post_path
    end
  end

  def show
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_back(fallback_location: root_path)
  end

  private

  def post_params
    params.require(:post).permit({image: []}, :description)
  end

end
