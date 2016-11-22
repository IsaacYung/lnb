class ContactMailer < ApplicationMailer
  def contact(client)
    @client = client
    @date = Time.now.strftime("%d/%m/%Y %H:%M:%S %Z")
    mail(to: 'site@lnb.adv.br', subject: 'Site | ' + @client.subject)
  end
end
