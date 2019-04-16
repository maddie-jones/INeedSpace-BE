class ImagesearchFacade
  def initialize(query)
    @query = query
  end

  def search_images
    data = NasaImageService.search_images(@query)
    SearchImage.new(data).search_images
  end
end
