class CoachmailerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.coachmailer_mailer.Coach_Created.subject
  #
  def Coach_Created
    @player=params[:player]
    @coachinfo=params[:coachinfo]
    @greeting = "Hi"
    attachments['technology.jpg'] = File.read('app/assets/images/technology.jpg')
    mail(
      from: "ravi@gmail.com",
      to: Player.first.email,
      cc: Player.all.pluck(:email),
      bcc: "abc@gmail.com",
      subject: "New Coach created" 
    )
  end
end
