class UserMailer < ApplicationMailer
  default from: 'LesBonAmis@IchIch.com'
 
  def welcome_email(user, title, amount)
    @user = user
	@title = title
	@amount = amount
	
	

    mail(to: @user.email, subject: @title)
  end
end