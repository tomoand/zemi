class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  # before_action :test
  # def test
  #   sleep 5
  # end 
end
