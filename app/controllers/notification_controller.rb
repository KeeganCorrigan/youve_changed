class NotificationController < ApplicationController
  def create
    FriendNotifierMailer.inform(current_user, params[:email]).deliver_now
    flash[:notice] = "Successfully told your friend that they've changed and that you're an asshole."
    redirect_to root_url
  end
end
