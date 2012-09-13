class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to :controller => :sessions, :action => :create, :id => @user.id
    else
      flash[:error] = "Something went wrong"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
