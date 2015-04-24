class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :UIN
      t.string :email
      t.boolean :US_Citizen
      t.string :degree
      t.string :position_type
      t.string :Mock_1
      t.string :Mock_2
      t.string :Resume_1
      t.string :Resume_2
      t.string :Resume_3
      t.boolean :Lunch

      t.timestamps null: false
    end
    add_index :students, :UIN, unique: true
    add_index :students, :email, unique: true
  end
end
