class UserMailer < ApplicationMailer

  def welcome_email(user)

  	@user = user
  	headers['X-MJ-CustomID'] = 'rubyPR_Test_ID_1469790724'
	headers['X-MJ-EventPayload'] = 'rubyPR_Test_Payload'
	headers['X-MJ-TemplateLanguage'] = 'true'

     mail(from: "sehra.service@gmail.com", to: @user.email,
          subject: "This is a nice welcome email")
   end

end