class Book < ApplicationRecord
    has_one_attached :image
    has_many :book_review, -> { order "created_at DESC"}
    belongs_to:user
end
