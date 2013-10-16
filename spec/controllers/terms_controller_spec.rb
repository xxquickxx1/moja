require 'spec_helper'

describe TermsController do

  describe "GET 'terms'" do
    it "returns http success" do
      get 'terms'
      response.should be_success
    end
  end

end
