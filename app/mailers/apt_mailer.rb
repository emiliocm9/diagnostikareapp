class AptMailer < ApplicationMailer
  def new_appointment_email(user)
    @appointment = params[:appointment]
    @date = @appointment.time.strftime('%A %d %Y')

    mail(to: user.email, subject: 'You have scheduled a new appointment!')
  end
end
