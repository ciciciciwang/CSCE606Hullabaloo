require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :login => "MyString",
      :hashed_password => "MyString",
      :salt => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_login[name=?]", "user[login]"

      assert_select "input#user_hashed_password[name=?]", "user[hashed_password]"

      assert_select "input#user_salt[name=?]", "user[salt]"
    end
  end
end
