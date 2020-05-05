class UserMailer < ApplicationMailer
  default from: 'acastelbou@outlook.fr'

  def welcome_email(user)
    @user = user
    @url  = 'https://thecoach.herokuapp.com/'
    mail(to: @user.email, subject: 'Bienvenue chez TheCoach !')
  end
end
