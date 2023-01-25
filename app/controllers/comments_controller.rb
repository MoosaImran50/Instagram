class CommentsController < ApplicationController
  before_action :authenticate_account!

  def create
    @comment = Comment.new(comment_params)
    @comment.account_id = current_account.id if account_signed_in?
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end

end
