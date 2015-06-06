json.array!(@people_admins) do |people_admin|
  json.extract! people_admin, :id, :name, :school, :department
  json.url people_admin_url(people_admin, format: :json)
end
