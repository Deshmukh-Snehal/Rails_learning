# Preview all emails at http://localhost:3000/rails/mailers/coachmailer_mailer
class CoachmailerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/coachmailer_mailer/Coach_Created
  def Coach_Created
    CoachmailerMailer.with(player: Player.first, coachinfo: Coachinfo.first).Coach_Created
  end

end