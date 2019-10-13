class PinRelease < ApplicationRecord
    belongs_to :pin
    belongs_to :company, optional: true
end
