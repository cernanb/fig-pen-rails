class Pin < ApplicationRecord
    belongs_to :company
    has_many :pin_releases
end
