class UserController < ApplicationController
  def show
    @lists = @user.lists
  end
end
