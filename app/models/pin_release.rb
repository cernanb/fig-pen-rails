class PinRelease < ApplicationRecord
    belongs_to :pin
    belongs_to :event, optional: true
    belongs_to :retailer, optional: true
end
