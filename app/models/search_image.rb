class SearchImage
  attr_reader :id

  def initialize(data)
    @id = 1
    @data = data
  end

  def search_images
    images = @data[:collection][:items].map.with_index do |hash,i|
      new_hash = {id: i + 1,
                  attributes: {
                    href: hash[:links][0][:href],
                    title: hash[:data][0][:title]
                    }
      }
      new_hash
    end
    images
  end
end
