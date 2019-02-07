class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: {message: "Cant use dis alias"}
  validates :title, uniqueness: {message: "Cant use dis title"}


end
