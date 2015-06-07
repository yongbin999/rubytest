json.array!(@people_admin_profiles) do |people_admin_profile|
  json.extract! people_admin_profile, :id, :account, :body, :people/admin_id
  json.url people_admin_profile_url(people_admin_profile, format: :json)
end
