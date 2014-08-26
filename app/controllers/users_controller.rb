class UsersController < ApplicationController
	before_action :set_user, only: [:show]

def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end

def show
end


private
def set_user
	@user = User.find(params[:id])
end
end
