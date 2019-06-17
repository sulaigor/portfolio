class SignInController < ApplicationController
  def index
    @admin_user = User.first
  end
end
