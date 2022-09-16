class BookSerializer
  include JSONAPI::Serializer
  attributes :title, :image_url, :slug

  has_many :reviews
end
