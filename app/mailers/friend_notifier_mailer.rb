class FriendNotifierMailer < ApplicationMailer
  def inform(user, friend_address)
    #has to match view name!
    @user = user
    mail(to: friend_address, subject: "#{user.name} says you've changed")
  end
end
