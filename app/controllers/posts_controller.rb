class PostsController < ApplicationController
  before_action :authenticate_account!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.account_id = current_account.id if account_signed_in?
    if @post.save
      redirect_to profile_path(current_account.username)
    else
      redirect_to new_post_path
    end
  end

  def update_page
    begin
      @post = Post.find(params[:post_id])
      if @post.account_id != current_account.id
        flash[:error] = "You are not authorized to edit this post."
        redirect_back(fallback_location: root_path)
      end
    rescue ActiveRecord::RecordNotFound
      flash[:error] = "Post not found."
      redirect_back(fallback_location: root_path)
    end
  end

  def update_post
    @post = Post.find(params[:post_id])

    if @post.update(post_params)
      redirect_to profile_path(current_account.username)
    end

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
