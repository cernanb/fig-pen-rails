class Pin < ApplicationRecord
    belongs_to :company, optional: true
    has_many :pin_releases
    has_one_attached :photo
end
