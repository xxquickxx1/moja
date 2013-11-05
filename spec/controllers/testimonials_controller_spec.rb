require 'spec_helper'

describe TestimonialsController do

  describe "GET 'testimonial'" do
    it "returns http success" do
      get 'testimonial'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

end
