class NasaImageService
  def self.search_images(query)
    conn = Faraday.new(url: 'https://images-api.nasa.gov') do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.params[:q] = query
      faraday.params[:media_type] = "image"
    end
    response = conn.get('/search')
    JSON.parse(response.body, symbolize_names: true)
  end
end
