class AptMailer < ApplicationMailer
  def new_appointment_email(user)
    @appointment = params[:appointment]
    mail(to: user.email, subject: "You have scheduled a new appointment!")
  end
end
