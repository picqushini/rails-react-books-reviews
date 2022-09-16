class ReviewSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :score, :book_id

  belongs_to :book
end
