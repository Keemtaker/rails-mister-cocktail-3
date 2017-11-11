class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_attachments :photos, maximum: 2
  has_many(:ingredients, through: :doses)
  validates(:name, presence: true, uniqueness: true)
end
