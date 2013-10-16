require 'spec_helper'

describe PrivacyController do

  describe "GET 'privacy'" do
    it "returns http success" do
      get 'privacy'
      response.should be_success
    end
  end

end
