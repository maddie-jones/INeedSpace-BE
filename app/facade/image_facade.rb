class ImageFacade
  def day_image
    data = ApodService.day_image
    Image.new(data)
  end

  private

  def service
    ApodService.day_image
  end
end
