class UsersController < ApplicationController
  before_action :authenticate_user!
  def my
  end

  def index
  end
end
