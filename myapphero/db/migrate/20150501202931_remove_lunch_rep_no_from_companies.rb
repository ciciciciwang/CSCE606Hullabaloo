class RemoveLunchRepNoFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :lunch_rep_no, :string
  end
end
