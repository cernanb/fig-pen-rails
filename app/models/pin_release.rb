class PinRelease < ApplicationRecord
    belongs_to :pin
    belongs_to :company
end
