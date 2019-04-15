class Favorite < ApplicationRecord
  validates_presence_of :title,
                        :url,
                        :hdurl,
                        :explanation,
                        :media_type
end
