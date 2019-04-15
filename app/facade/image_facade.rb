class ImageFacade
  def day_image(nasa_api_key)
    data = ApodService.day_image(nasa_api_key)
    Image.new(data)
  end
end
