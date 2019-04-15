class ImagesearchFacade
  def initialize(query)
    @query = query
  end

  def search_images
    data = NasaImageService.search_images(@query)
    SearchImages.new(data)
  end
end
