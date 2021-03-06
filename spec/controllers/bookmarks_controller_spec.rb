require 'rails_helper'

	describe BookmarksController do
    before :each do
    @request.env["devise.mapping"] = Devise.mappings[:current_user]
    @current_user = create(:user)
    sign_in @current_user
  end
  
		
		describe "POST#create" do
			it "creates a new bookmark in the database" do
				expect {
					post :create, tip_id: 1
				}.to change(Bookmark, :count).by(1)
		end
	end

	describe 'DELETE destroy' do
      it "deletes the bookmark from the database" do
        expect{
          delete :destroy, tip_id: 1
        }.to change(Bookmark, :count).by(-1)
      end
    end
  end

