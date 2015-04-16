class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :contact_person
      t.string :contact_email
      t.string :rep_1
      t.string :rep_2
      t.string :rep_3
      t.string :rep_4
      t.string :rep_5
      t.string :rep_6
      t.string :student_level
      t.string :job_type
      t.integer :interview1_rep_no
      t.integer :interview2_rep_no
      t.integer :clinic1_rep_no
      t.integer :clinic2_rep_no
      t.integer :clinic3_rep_no

      t.timestamps null: false
    end
  end
end
