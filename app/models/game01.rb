class Game01 < ApplicationRecord
    has_one_attached :rule
    has_one_attached :box
    has_many_attached :pieces

    validates :rule, :box, :pieces, presence: true
    validates :rule, blob:{content_type: ['application/pdf']}
    validates :box, :pieces, blob:{content_type: ['image/png', 'image/jpg', 'image/jpeg']}
    validates :rule, :box, :pieces, blob: { size_range: 1..2.megabytes }
end
