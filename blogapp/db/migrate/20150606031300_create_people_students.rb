class CreatePeopleStudents < ActiveRecord::Migration
  def change
    create_table :people_students do |t|
      t.string :name
      t.integer :grade
      t.boolean :attendence

      t.timestamps null: false
    end
  end
end
