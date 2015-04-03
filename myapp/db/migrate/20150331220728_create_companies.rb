class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :Name
      t.string :Representative_1
      t.string :Representative_2
      t.string :Representative_3
      t.string :Representative_4
      t.string :Representative_5
      t.string :Representative_6
      t.string :Contact_Name
      t.string :Contact_Email
      t.integer :Monday_timeslot
      t.integer :Monday_Number_of_Representatives
      t.integer :Monday_Student_Level
      t.integer :Monday_Job_Type    
      t.integer :Tuesday_Number_of_Representatives
      t.integer :Tuesday_Student_Level
      t.integer :Tuesday_Job_Type
      
      t.timestamps null: false
    end
    add_index :companies, :name, unique: true
  end
end

