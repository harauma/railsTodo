class UserController < ApplicationController
  before_action :authenticate_user!, only: :all

  def all
    @users = User.all
  end
end
