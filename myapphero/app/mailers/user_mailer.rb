class UserMailer < ApplicationMailer

	default from: '2015_IAP@cse.tamu.edu'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def stu_reg(user)
  	@user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
