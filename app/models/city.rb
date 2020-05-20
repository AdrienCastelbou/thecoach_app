class City < ApplicationRecord
  has_many :coaches
  has_one_attached :city_picture
end
