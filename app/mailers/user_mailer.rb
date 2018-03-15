class UserMailer < ApplicationMailer
  default from: 'teamtuba.thp@gmail.com'
 
  def list_email(user)
  	@user = user
    mail(to: @user.email, subject: "ta liste de courses cook'it")
  end
end
