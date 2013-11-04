class Admin::UsersController < Admin::BaseController
  def home
  	set_meta_tags :nofollow => true

  	@users = User.order("id DESC")
  end
end
