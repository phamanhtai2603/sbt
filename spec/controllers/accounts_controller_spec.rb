require 'rails_helper'

RSpec.describe AccountsController, type: :controller do
  let!(:account){FactoryGirl.create(:account)}

  describe "GET #show" do
    it "should have status 200" do
      get :show, params: { id: account.id }
      expect(response.status).to eq(200)
    end

    it "render show" do
      get :show,params: { id: account.id }
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do
    it "should have status 200" do
      get :new
      expect(response.status).to eq(200)
    end

    it "render new" do
      get :new
      expect(response).to render_template :new
    end
  end

  # describe "POST #create" do
  #   expect {
  #     post :create, {:account =>name: Faker::Name.name, email: Faker::Internet.email, password: 123321, phone_number: 0123456789, password_confirmation: 123321 }
  #   }.to change(Account,:count).by(+1)
  # end

  describe "GET #index" do
    context "login with admin" do
      login_admin

      it "should have status 200" do
        get :index
        expect(response.status).to eq(200)
      end

      it "render index" do
        get :index
        expect(response).to render_template :index
      end
    end
  end

  describe "DELETE #destroy" do
    let!(:account){FactoryGirl.create(:account)}
    context "login with admin" do
      login_admin

      it "destroy success" do
        expect{delete :destroy, params: {id: account.id}}.to change(Account,:count).by(-1)
      end

      it "redirect to root page" do
        delete :destroy, params: {id: account.id}
        response.should redirect_to accounts_path
      end

    end
  end

  describe "GET #edit" do
    context "login with admin" do
      login_admin

      it "should have status 200" do
        get :edit, params: {id: account.id}
        expect(response.status).to eq(200)
      end

      it "render edit" do
        get :edit, params: {id: account.id}
        expect(response).to render_template :edit
      end
    end

    context "login with wrong user" do
      login_user
      it "redirect to root_path" do
        get :edit, params: {id: account.id}
        response.should redirect_to root_url
      end
    end
  end

  #update
  # describe "PATCH #update" do
  #   let!(:account){FactoryGirl.create(:account)}
  #   context "login with admin" do
  #     login_admin
  #     it "should change info" do
  #       # patch :update, params: {id: account.id}
  #       should permit(:name, :active_status).
  #         for(:update, params: {id: account.id})
  #       response.should redirect_to account_path
  #     end
  #   end
  # end

end
