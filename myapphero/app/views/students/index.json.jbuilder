json.array!(@students) do |student|
  json.extract! student, :id, :name, :UIN, :email, :US_citizen, :degree, :position_type
  json.url student_url(student, format: :json)
end
