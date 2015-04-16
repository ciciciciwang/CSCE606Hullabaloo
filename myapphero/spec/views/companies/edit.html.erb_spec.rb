require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :contact_person => "MyString",
      :contact_email => "MyString",
      :rep_1 => "MyString",
      :rep_2 => "MyString",
      :rep_3 => "MyString",
      :rep_4 => "MyString",
      :rep_5 => "MyString",
      :rep_6 => "MyString",
      :student_level => "MyString",
      :job_type => "MyString",
      :interview1_rep_no => 1,
      :interview2_rep_no => 1,
      :clinic1_rep_no => 1,
      :clinic2_rep_no => 1,
      :clinic3_rep_no => 1
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_contact_person[name=?]", "company[contact_person]"

      assert_select "input#company_contact_email[name=?]", "company[contact_email]"

      assert_select "input#company_rep_1[name=?]", "company[rep_1]"

      assert_select "input#company_rep_2[name=?]", "company[rep_2]"

      assert_select "input#company_rep_3[name=?]", "company[rep_3]"

      assert_select "input#company_rep_4[name=?]", "company[rep_4]"

      assert_select "input#company_rep_5[name=?]", "company[rep_5]"

      assert_select "input#company_rep_6[name=?]", "company[rep_6]"

      assert_select "input#company_student_level[name=?]", "company[student_level]"

      assert_select "input#company_job_type[name=?]", "company[job_type]"

      assert_select "input#company_interview1_rep_no[name=?]", "company[interview1_rep_no]"

      assert_select "input#company_interview2_rep_no[name=?]", "company[interview2_rep_no]"

      assert_select "input#company_clinic1_rep_no[name=?]", "company[clinic1_rep_no]"

      assert_select "input#company_clinic2_rep_no[name=?]", "company[clinic2_rep_no]"

      assert_select "input#company_clinic3_rep_no[name=?]", "company[clinic3_rep_no]"
    end
  end
end
