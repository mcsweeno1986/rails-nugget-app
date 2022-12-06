class SubCategory < ApplicationRecord
  belongs_to :category, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
