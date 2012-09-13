require 'spec_helper'

describe UsersController do
  let(:user) { FactoryGirl.create(:user) }

  describe 'GET portfolio' do
    context 'when user is logged in' do
      before :each do
        controller.stub(:user_signed_in?).and_return true
        get :portfolio, :user_id => user.id
      end

      it { assigns(:portfolio_stocks).should be }
      it { response.should be_success }
    end

    context 'when user is not logged in' do
      before :each do
        controller.stub(:user_signed_in?).and_return false
        get :portfolio, :user_id => user.id
      end
      it { should redirect_to login_path }
    end
  end
end
