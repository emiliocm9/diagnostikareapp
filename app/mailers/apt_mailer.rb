class AptMailer < ApplicationMailer
  def new_appointment_email
    @appointment = params[:appointment]
    @date = @appointment.time.strftime("%A"" ""%d"" ""%Y")

    mail(to: 'pacheco', subject: "You have scheduled a new appointment!")
  end
end
