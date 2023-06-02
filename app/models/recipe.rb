class Recipe < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :instructions, length: { minimum: 50 }, presence: true
  validates :minutes_to_complete, numericality: { only_integer: true }
end
