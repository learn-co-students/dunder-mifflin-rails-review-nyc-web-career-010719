class Dog < ApplicationRecord
  has_many :employees

  def self.sort_dogs
    Dog.all.sort_by do |dog|
      - dog.employees.count
    end
  end

end
