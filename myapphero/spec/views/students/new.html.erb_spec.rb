require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :name => "MyString",
      :UIN => "MyString",
      :email => "MyString",
      :US_Citizen => false,
      :degree => "MyString",
      :position_type => "MyString"
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_UIN[name=?]", "student[UIN]"

      assert_select "input#student_email[name=?]", "student[email]"

      assert_select "input#student_US_Citizen[name=?]", "student[US_Citizen]"

      assert_select "input#student_degree[name=?]", "student[degree]"

      assert_select "input#student_position_type[name=?]", "student[position_type]"
    end
  end
end
