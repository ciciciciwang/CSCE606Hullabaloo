class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :UIN
      t.string :email
      t.boolean :UScitizen
      t.string :degree_level
      t.string :position_type

      t.timestamps null: false
    end
    add_index :students, :UIN, unique: true
    add_index :students, :email, unique: true
  end
end
