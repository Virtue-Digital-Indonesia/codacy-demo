require 'json'
class SMSGateway
  def initialize
    @url = ENV["URL"]
    @username = ENV["USERNAME"]
    @password = ENV["PASSWORD"]
    @short_code = ENV["SHORT_CODE"]
    @campaign_id = ENV["CAMPAIGN_ID"]
    @channel = ENV["CHANNEL"]
  end

  def send to, message
    `curl -H "Content-Type: application/x-www-form-urlencoded; charset=utf-8" -d "username=#{@username}&password=#{@password}&MSISDN=#{to}&content=#{message}&channel=#{@channel}&shortcode=#{@short_code}&campaignid=#{@campaign_id}&premium=1" #{@url}`
  end
end
