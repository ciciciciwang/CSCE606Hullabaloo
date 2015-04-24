require 'rails_helper'

RSpec.describe "appointments/edit", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :stu_name => "",
      :UIN => "",
      :stu_email => "",
      :section => "",
      :time_slot => "",
      :company => "MyString"
    ))
  end

  it "renders the edit appointment form" do
    render

    assert_select "form[action=?][method=?]", appointment_path(@appointment), "post" do

      assert_select "input#appointment_stu_name[name=?]", "appointment[stu_name]"

      assert_select "input#appointment_UIN[name=?]", "appointment[UIN]"

      assert_select "input#appointment_stu_email[name=?]", "appointment[stu_email]"

      assert_select "input#appointment_section[name=?]", "appointment[section]"

      assert_select "input#appointment_time_slot[name=?]", "appointment[time_slot]"

      assert_select "input#appointment_company[name=?]", "appointment[company]"
    end
  end
end
