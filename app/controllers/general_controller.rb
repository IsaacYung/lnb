class GeneralController < ApplicationController
  def index
    xml = Faraday.get("http://www.oabsp.org.br/noticias/").body
    @feed_stf = Feedjira::Feed.fetch_and_parse "http://www.stf.jus.br/portal/RSS/noticiaRss.asp?codigo=1"
    @feed_stj = Feedjira::Feed.fetch_and_parse "http://feeds.feedburner.com/STJNoticias?format=xml"
  end

  def contact
  end

  def atuaction
  end

  def team
  end

  def contact
    @message = Message.new
  end

  def about
  end

  def create
    @message = Message.new(message_params)
    @message.name = @message.name.capitalize

    ContactMailer.contact(@message).deliver

    congratulation = 'Obrigado ' + @message.name.partition(' ').first + ', mensagem enviada'
    respond_to do |format|
      format.html { redirect_to contact_url, notice: congratulation }
    end
  end

  def message_params
    params.require(:message).permit(:name, :email, :phone, :cellphone, :subject, :message)
  end
end
