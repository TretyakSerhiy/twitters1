class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.update_attribute(:activated,    true)
      user.update_attribute(:activated_at, Time.zone.now)
      log_in user
      flash[:success] = "Account activated!"
      redirect_to user
    else
      flash[:danger] = "Invalid activation link"
      redirect_to root_url
    end
  end
end


##########################################################

# class AccountActivationsController < ApplicationController
#   def edit
#     user = User.find_by(email: params[:email])
#
#     if !user&.activated? && user&.authenticated?(:activation, params[:id])
#       user.update(activated: true, activated_at: Time.zone.now)
#       log_in user
#       redirect_to user, notice: "Account activated!"
#     else
#       redirect_to root_url, danger: "Invalid activation link"
#     end
#   end
# end
