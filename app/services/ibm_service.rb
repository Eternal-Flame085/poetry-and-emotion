class IbmService
  def self.get_poem_tone(text)
    response = conn.get("/v3/tone") do |poem|
      poem.params[:version] = "2017-09-21"
      poem.params[:text] = text
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/7e7cd82e-a633-4110-8aa1-daf6f16df00c") do |connection|
      connection.basic_auth("apikey", "vP1zcwN9gB0Ua7g9DSxHs82NUreyLbAVFRADUOoR6VgG" )
    end
  end
end
