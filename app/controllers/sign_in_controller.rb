class SignInController < ApplicationController
  def index
    @admin_user = User.first
    @user = User.new
  end
end
