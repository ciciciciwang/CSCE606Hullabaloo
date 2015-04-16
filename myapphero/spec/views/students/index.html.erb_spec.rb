require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "Name",
        :UIN => "Uin",
        :email => "Email",
        :US_Citizen => false,
        :degree => "Degree",
        :position_type => "Position Type"
      ),
      Student.create!(
        :name => "Name",
        :UIN => "Uin",
        :email => "Email",
        :US_Citizen => false,
        :degree => "Degree",
        :position_type => "Position Type"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uin".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Degree".to_s, :count => 2
    assert_select "tr>td", :text => "Position Type".to_s, :count => 2
  end
end
