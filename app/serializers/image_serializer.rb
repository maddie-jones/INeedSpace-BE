class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :copyright, :date, :explanation, :url, :hdurl, :title
end
