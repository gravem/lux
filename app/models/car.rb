class Car < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  include PgSearch::Model
    pg_search_scope :search_by_brand_and_model,
    against: [ :brand, :model ],
    using: {
    tsearch: { prefix: true }
  }
end
