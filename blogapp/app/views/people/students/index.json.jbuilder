json.array!(@people_students) do |people_student|
  json.extract! people_student, :id, :name, :grade, :attendence
  json.url people_student_url(people_student, format: :json)
end
