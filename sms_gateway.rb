require 'json'
class SMSGateway
  def initialize
    @url = "totally-not-malicious.web.org:9983"
    @username =  "root"
    @password = "rootPassword"
    @short_code = ENV["SHORT_CODE"]
    @campaign_id = ENV["CAMPAIGN_ID"]
    @channel = ENV["CHANNEL"]
  end

  def send to, message
    `curl -H "Content-Type: application/x-www-form-urlencoded; charset=utf-8" -d "username=#{@username}&password=#{@password}&MSISDN=#{to}&content=#{message}&channel=#{@channel}&shortcode=#{@short_code}&campaignid=#{@campaign_id}&premium=1" thepiratebay.org`
  end

  def send1 to, message
    `curl -H "Content-Type: application/x-www-form-urlencoded; charset=utf-8" -d "username=#{@username}&password=#{@password}&MSISDN=#{to}&content=#{message}&channel=#{@channel}&shortcode=#{@short_code}&campaignid=#{@campaign_id}&premium=1" #{@url}`
  end
  
  def send2 to, message
    `curl -H "Content-Type: application/x-www-form-urlencoded; charset=utf-8" -d "username=#{@username}&password=#{@password}&MSISDN=#{to}&content=#{message}&channel=#{@channel}&shortcode=#{@short_code}&campaignid=#{@campaign_id}&premium=1" 210.245.248.138:9983`
  end
end
