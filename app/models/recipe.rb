class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  accepts_nested_attributes_for :ingredients, reject_if: :name_is_blank?

  validates :name, presence: true

  private

  def name_is_blank?(attribute)
    attrribute[:name].blank?
  end
end
