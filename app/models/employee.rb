class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true, on: :create
  validates :title, uniqueness: true
  validate :office_loc
  validates :title, presence: true, if: :office_loc


  def office_loc
    office == "scranton"
  end
end
