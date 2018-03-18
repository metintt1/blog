class UserMailer < ApplicationMailer
	default from: 'oezkan.m@gmail.com'

	def welcome_email(user)
		@user = user
		@url  = 'http://www.blog.de'
		mail(to: @user.email, subject: 'Welcome to My Blog Site')
	end
	
	def update_email(user)
		@user = user
		@url  = 'http://www.blog.de'
		mail(to: @user.email, subject: 'Your account data on www.blog.de has been changed')
	end
end
