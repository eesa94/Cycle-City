class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  def self.search(search_term)
    if Rails.env.production?
      Product.where("start || finish ilike ?", "%#{search_term}%")
    else
      Product.where("start || finish LIKE ?", "%#{search_term}%")
    end
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end

  validates :name, presence: true
end
