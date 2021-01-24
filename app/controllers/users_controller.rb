class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    binding.pry
  end
  
  def create
    binding.pry
  end
end
