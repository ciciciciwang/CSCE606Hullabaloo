require 'rails_helper'

RSpec.describe "timeslots/show", type: :view do
  before(:each) do
    @timeslot = assign(:timeslot, Timeslot.create!(
      :AttDate => "Att Date",
      :Section => "Section",
      :Slot => "Slot",
      :comNum => 1,
      :stuNum => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Att Date/)
    expect(rendered).to match(/Section/)
    expect(rendered).to match(/Slot/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
