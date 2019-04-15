class FavoritesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :explanation, :url, :hdurl, :title, :media_type
end
