class Favorite < ApplicationRecord
  validates_presence_of :title,
                        :url,
                        :hdurl,
                        :explanation
end
