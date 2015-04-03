class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :Student_Name
      t.string :Company_Name
      t.string :Time_Slot_integer
      t.string :Event_integer
      t.integer :UIN

      t.timestamps null: false
    end
  end
end

