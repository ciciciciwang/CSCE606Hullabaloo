json.array!(@companies) do |company|
  json.extract! company, :id, :name, :contact_person, :contact_email, :rep_1, :rep_2, :rep_3, :rep_4, :rep_5, :rep_6, :student_level, :job_type, :interview1_rep_no, :interview2_rep_no, :clinic1_rep_no, :clinic2_rep_no, :clinic3_rep_no
  json.url company_url(company, format: :json)
end
