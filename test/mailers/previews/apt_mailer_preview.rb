# Preview all emails at http://localhost:3000/rails/mailers/apt_mailer
class AptMailerPreview < ActionMailer::Preview
  def new_appointment_email
    # Set up a temporary order for the preview
    appointment = Appointment.new(user_id: 1, time: 'Wed, 16 Dec 2020 17:13:00');

    AptMailer.with(appointment: appointment).new_appointment_email
  end
end
