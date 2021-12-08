class ApplicationMailer < ActionMailer::Base
  default from: "mail@brauzeugen.ch", reply_to: "mail@brauzeugen.ch"
  layout "mailer"
end
