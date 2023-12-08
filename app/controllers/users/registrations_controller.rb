class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      if resource.persisted?
        Rails.logger.info "Registered user: #{resource.inspect}"
        redirect_to root_path and return
      end
    end
  end
end
