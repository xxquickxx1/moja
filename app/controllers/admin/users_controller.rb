class Admin::UsersController < Admin::BaseController
  def home
  	@users = User.order("id DESC")
  end
end
