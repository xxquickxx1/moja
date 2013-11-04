require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SalesController do

  # This should return the minimal set of attributes required to create a valid
  # Sale. As you add validations to Sale, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "monthly_payment" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SalesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all sales as @sales" do
      sale = Sale.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sales).should eq([sale])
    end
  end

  describe "GET show" do
    it "assigns the requested sale as @sale" do
      sale = Sale.create! valid_attributes
      get :show, {:id => sale.to_param}, valid_session
      assigns(:sale).should eq(sale)
    end
  end

  describe "GET new" do
    it "assigns a new sale as @sale" do
      get :new, {}, valid_session
      assigns(:sale).should be_a_new(Sale)
    end
  end

  describe "GET edit" do
    it "assigns the requested sale as @sale" do
      sale = Sale.create! valid_attributes
      get :edit, {:id => sale.to_param}, valid_session
      assigns(:sale).should eq(sale)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Sale" do
        expect {
          post :create, {:sale => valid_attributes}, valid_session
        }.to change(Sale, :count).by(1)
      end

      it "assigns a newly created sale as @sale" do
        post :create, {:sale => valid_attributes}, valid_session
        assigns(:sale).should be_a(Sale)
        assigns(:sale).should be_persisted
      end

      it "redirects to the created sale" do
        post :create, {:sale => valid_attributes}, valid_session
        response.should redirect_to(Sale.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sale as @sale" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sale.any_instance.stub(:save).and_return(false)
        post :create, {:sale => { "monthly_payment" => "invalid value" }}, valid_session
        assigns(:sale).should be_a_new(Sale)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sale.any_instance.stub(:save).and_return(false)
        post :create, {:sale => { "monthly_payment" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sale" do
        sale = Sale.create! valid_attributes
        # Assuming there are no other sales in the database, this
        # specifies that the Sale created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Sale.any_instance.should_receive(:update_attributes).with({ "monthly_payment" => "MyString" })
        put :update, {:id => sale.to_param, :sale => { "monthly_payment" => "MyString" }}, valid_session
      end

      it "assigns the requested sale as @sale" do
        sale = Sale.create! valid_attributes
        put :update, {:id => sale.to_param, :sale => valid_attributes}, valid_session
        assigns(:sale).should eq(sale)
      end

      it "redirects to the sale" do
        sale = Sale.create! valid_attributes
        put :update, {:id => sale.to_param, :sale => valid_attributes}, valid_session
        response.should redirect_to(sale)
      end
    end

    describe "with invalid params" do
      it "assigns the sale as @sale" do
        sale = Sale.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sale.any_instance.stub(:save).and_return(false)
        put :update, {:id => sale.to_param, :sale => { "monthly_payment" => "invalid value" }}, valid_session
        assigns(:sale).should eq(sale)
      end

      it "re-renders the 'edit' template" do
        sale = Sale.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sale.any_instance.stub(:save).and_return(false)
        put :update, {:id => sale.to_param, :sale => { "monthly_payment" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sale" do
      sale = Sale.create! valid_attributes
      expect {
        delete :destroy, {:id => sale.to_param}, valid_session
      }.to change(Sale, :count).by(-1)
    end

    it "redirects to the sales list" do
      sale = Sale.create! valid_attributes
      delete :destroy, {:id => sale.to_param}, valid_session
      response.should redirect_to(sales_url)
    end
  end

end
