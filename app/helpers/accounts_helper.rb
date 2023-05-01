module AccountsHelper

  def profile_picture_big account
    image_path = account.image.present? ? account.image.url : "placeholder-profile.jpg"
    image_tag(image_path, class: "img-circle-big")
  end

  def profile_picture_small account
    image_path = account.image.present? ? account.image.url : "placeholder-profile.jpg"
    image_tag(image_path, class: "img-circle-small")
  end

  def profile_picture_medium account
    image_path = account.image.present? ? account.image.url : "placeholder-profile.jpg"
    image_tag(image_path, class: "img-circle-medium float-left m-r-15")
  end

  def can_edit_profile? profile_id
    account_signed_in? && current_account.id == profile_id
  end

  def already_followed? profile_id
    account_signed_in? && Follower.find_by(follower_id: current_account.id, following_id: profile_id)
  end

end
