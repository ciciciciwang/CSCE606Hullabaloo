class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :UIN
      t.string :email
      t.string :US_citizen
      t.string :degree
      t.string :position_type

      t.timestamps null: false
    end
    add_index :students, :UIN, unique: true
    add_index :students, :email, unique: true
  end
end
