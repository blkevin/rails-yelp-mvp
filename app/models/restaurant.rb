class Restaurant < ApplicationRecord
  CATEGORIES = %w[Chinese Italian Japanese French Belgian]
  has_many :reviews, dependent: :destroy
  validates :name, :category, :phone_number, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
