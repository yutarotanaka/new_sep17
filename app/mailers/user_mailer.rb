class UserMailer < ApplicationMailer
    def welcome_email(user)
    @user = user
    @url  = 'https://login-3-yonakahara.c9users.io/login_form'
    mail(to: @user.email, subject: 'Welcome to PAPA!')
    end
end
