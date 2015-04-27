json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :stu_name, :UIN, :stu_email, :section, :time_slot, :company
  json.url appointment_url(appointment, format: :json)
end
