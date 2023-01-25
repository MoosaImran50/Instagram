class LikesController < ApplicationController
  before_action :authenticate_account!

  def save_like
    @like = Like.new(post_id: params[:post_id], account_id: current_account.id)

    existing_like = Like.where(post_id: params[:post_id], account_id: current_account.id)

    if existing_like.any?
      existing_like.first.destroy
      # Unlike
    elsif @like.save
      # Like
    end

    redirect_back(fallback_location: root_path)

  end

end
