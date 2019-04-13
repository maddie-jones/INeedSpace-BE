class Image
  attr_reader :id, :copyright, :date, :explanation, :url, :hdurl, :title
  def initialize(data)
    @id          = 1
    @copyright   = data[:copyright]
    @date        = data[:date]
    @explanation = data[:explanation]
    @url         = data[:url]
    @hdurl       = data[:hdurl]
    @title       = data[:title]
  end
end
