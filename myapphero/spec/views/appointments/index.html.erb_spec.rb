require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :stu_name => "",
        :UIN => "",
        :stu_email => "",
        :section => "",
        :time_slot => "",
        :company => "Company"
      ),
      Appointment.create!(
        :stu_name => "",
        :UIN => "",
        :stu_email => "",
        :section => "",
        :time_slot => "",
        :company => "Company"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
  end
end
