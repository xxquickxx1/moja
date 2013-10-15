class UserMailer < Devise::Mailer
  default from: "wdstories@example.com"

  def self.mailer_name
    "devise/mailer"
  end

end
