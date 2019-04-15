class Image
  attr_reader :id, :copyright, :date, :explanation, :url, :hdurl, :title, :media_type
  def initialize(data)
    @id          = 1
    @copyright   = data[:copyright]
    @date        = data[:date]
    @explanation = data[:explanation]
    @url         = data[:url]
    @hdurl       = data[:hdurl]
    @title       = data[:title]
    @media_type  = data[:media_type]
  end
end
