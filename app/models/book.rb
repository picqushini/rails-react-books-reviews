class Book < ApplicationRecord
  has_many :reviews

  # callback on slugify: i want the title to be slugified before it's saved in the db
  before_create :slugify

  # slugify the title of the book so that is URL safe
  def slugify
    self.slug = title.parameterize
  end

  def avg_score
    reviews.average(:score).round(2).to_f
  end
end
