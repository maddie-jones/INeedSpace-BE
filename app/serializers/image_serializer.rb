class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :copyright, :date, :explanation, :url, :hdurl, :title, :media_type
end
