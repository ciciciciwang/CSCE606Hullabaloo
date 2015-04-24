require 'rails_helper'

RSpec.describe "timeslots/new", type: :view do
  before(:each) do
    assign(:timeslot, Timeslot.new(
      :AttDate => "MyString",
      :Section => "MyString",
      :Slot => "MyString",
      :comNum => 1,
      :stuNum => 1
    ))
  end

  it "renders new timeslot form" do
    render

    assert_select "form[action=?][method=?]", timeslots_path, "post" do

      assert_select "input#timeslot_AttDate[name=?]", "timeslot[AttDate]"

      assert_select "input#timeslot_Section[name=?]", "timeslot[Section]"

      assert_select "input#timeslot_Slot[name=?]", "timeslot[Slot]"

      assert_select "input#timeslot_comNum[name=?]", "timeslot[comNum]"

      assert_select "input#timeslot_stuNum[name=?]", "timeslot[stuNum]"
    end
  end
end
