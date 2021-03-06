class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy

  validates :photo, presence: true
  validates :name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader
end
