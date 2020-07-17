class Employee < ApplicationRecord
  belongs_to :dog
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :alias, presence: true, if: :title_exists?

  def name
    self.first_name + " " + self.last_name
  end

  def title_exists?
    self.title ? true : false
  end 

end
