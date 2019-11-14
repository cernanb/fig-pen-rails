class Pin < ApplicationRecord
    belongs_to :company, optional: true
    belongs_to :line, optional: true
    has_many :pin_releases
    has_one_attached :photo

    def photo_url
        if self.photo.attached?
          Rails.application.routes.url_helpers.rails_blob_path(self.photo, only_path: true)
        else
          nil
        end
      end
end
