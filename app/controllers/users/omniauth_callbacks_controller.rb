class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    p "fuck yea - this worked"
  end
end