class Dog < ApplicationRecord
  has_many :employees


  def employee_count
    self.employees.count
  end


  def employee_name=(name)
    self.employee = Employee.find_or_create_by(first_name: name)
  end

  
  def employee_name
    self.employee ? self.employee.name : nil
  end

  # def employee_name=(name)
  #   self.employee = Employee.find_or_create_by(first_name: first_name, last_name: last_name, alias: alias, title: title, office: office, img_url: img_url, dog_id: dog_id)
  # end

end
