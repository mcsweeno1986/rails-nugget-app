class SubCategory < ApplicationRecord
  belongs_to :category
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
