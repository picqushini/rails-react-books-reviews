class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :image_url, :slug
end
