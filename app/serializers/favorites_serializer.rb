class FavoritesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :explanation, :url, :hdurl, :title
end
