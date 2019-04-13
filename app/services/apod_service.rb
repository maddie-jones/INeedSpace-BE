class ApodService
  def self.day_image
    conn = Faraday.new(url: 'https://api.nasa.gov') do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.params[:api_key] = ENV['NASA_API_KEY']
    end
    response = conn.get('/planetary/apod')
    JSON.parse(response.body, symbolize_names: true)
  end
end
