json.extract! employee, :id, :first_name, :last_name, :description, :role, :status, :department_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
