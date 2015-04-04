require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "MyString",
      :UIN => "MyString",
      :email => "MyString",
      :US_citizen => false,
      :degree => "MyString",
      :position_type => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_UIN[name=?]", "student[UIN]"

      assert_select "input#student_email[name=?]", "student[email]"

      assert_select "input#student_US_citizen[name=?]", "student[US_citizen]"

      assert_select "input#student_degree[name=?]", "student[degree]"

      assert_select "input#student_position_type[name=?]", "student[position_type]"
    end
  end
end
