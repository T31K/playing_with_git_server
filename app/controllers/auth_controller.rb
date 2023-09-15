class AuthController < ApplicationController

  def register
    # TODO
    email = params.require(:email)
    password = params.require(:password)
    first_name = params.require(:firstName)
    last_name = params.require(:last_name)
  end
end
