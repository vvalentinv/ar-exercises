class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { more_than_or_equal_to: 0, only_integer: true }
  validates :id, numericality: { more_than_or_equal_to: 1 }
end
