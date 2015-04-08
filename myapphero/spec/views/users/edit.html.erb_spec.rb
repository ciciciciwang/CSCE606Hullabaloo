require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :login => "MyString",
      :hashed_password => "MyString",
      :salt => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_login[name=?]", "user[login]"

      assert_select "input#user_hashed_password[name=?]", "user[hashed_password]"

      assert_select "input#user_salt[name=?]", "user[salt]"
    end
  end
end
