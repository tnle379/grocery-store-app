class Department < ApplicationRecord
  belongs_to :store
  has_many :employees
  
  def get_department_name(id)
      d = departments.where("id = " + id.to_s)
      return d.name
  end
end
