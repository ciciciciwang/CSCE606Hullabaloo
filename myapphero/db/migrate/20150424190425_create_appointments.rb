class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :stu_name
      t.string :UIN
      t.string :stu_email
      t.string :section
      t.string :time_slot
      t.string :company

      t.timestamps null: false
    end
  end
end
