class SearchImage

  def initialize(data)
    @data = data
    @id          = 1
    @href        = data[:collection][:items][0][:links][0][:href]
    @title       = data[:collection][:items][0][:data][0][:title]
  end

  def search_images
    images = @data[:collection][:items].map.with_index do |hash,i|
      new_hash = {id: i + 1,
                  href: hash[:links][0][:href],
                  title: hash[:data][0][:title]
      }
      new_hash
    end
    images
  end
end
