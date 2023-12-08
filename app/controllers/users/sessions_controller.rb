class Users::SessionsController < Devise::SessionsController
  def create
    super do |resource|
      if user_signed_in?
        Rails.logger.info "Signed in user: #{resource.inspect}"
        redirect_to root_path and return
      end
    end
  end
end
