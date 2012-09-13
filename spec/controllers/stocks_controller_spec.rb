require 'spec_helper'

describe StocksController do

  describe "GET 'index'" do
    before :each do
      get 'index'
    end
    it { response.should be_success }
    it { assigns(:stocks).should be }
  end

end
