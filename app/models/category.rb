class Category < ApplicationRecord
  belongs_to :user
  has_many :sub_categories
end
