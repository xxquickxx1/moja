class Admin::BaseController < ApplicationController
before_filter :validate_admin


def dashboard
set_meta_tags :nofollow => true

end


end