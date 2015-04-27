json.array!(@timeslots) do |timeslot|
  json.extract! timeslot, :id, :att_date, :section, :slot, :comnum, :stunum
  json.url timeslot_url(timeslot, format: :json)
end
