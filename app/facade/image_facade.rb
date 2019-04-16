class ImageFacade
  def day_image
    data = ApodService.day_image
    Image.new(data)
  end
end
