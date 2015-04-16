require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "Name",
      :UIN => "Uin",
      :email => "Email",
      :US_Citizen => false,
      :degree => "Degree",
      :position_type => "Position Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uin/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Degree/)
    expect(rendered).to match(/Position Type/)
  end
end
