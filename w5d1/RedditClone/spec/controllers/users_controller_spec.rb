require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of the user's username and password" do
        post :create, user: {name: "jack_bruce", password: ""}
        expect(response).to render_template("new")
        expect(flash[:errors]).to be_present
      end

      it "validates that the password is at least 6 characters long" do
        post :create, user: {name: "jack_bruce", password: "short"}
        expect(response).to render_template("new")
        expect(flash[:errors]).to be_present
      end
    end

  end
end
