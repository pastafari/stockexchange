class UsersController < ApplicationController
  before_filter :require_login, :only => [:portfolio]
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
    end
  end

  def portfolio
    @portfolio_stocks = User.find(params[:user_id]).portfolios
  end

  def show
    @user ||= User.find(params[:id])
  end
end
