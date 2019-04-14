class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :explanation, :url, :hdurl, :title
end
