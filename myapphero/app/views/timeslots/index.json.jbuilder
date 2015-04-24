json.array!(@timeslots) do |timeslot|
  json.extract! timeslot, :id, :AttDate, :Section, :Slot, :comNum, :stuNum
  json.url timeslot_url(timeslot, format: :json)
end
