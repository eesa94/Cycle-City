class Product < ApplicationRecord
  def self.search(search_term)
    if group = :development
      Product.where("name LIKE ?", "%#{search_term}%")
    elsif group = :production
      Product.where("name ilike ?", "%#{search_term}%")
    end
  end
end
