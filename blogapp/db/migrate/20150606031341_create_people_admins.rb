class CreatePeopleAdmins < ActiveRecord::Migration
  def change
    create_table :people_admins do |t|
      t.string :name
      t.string :school
      t.string :department

      t.timestamps null: false
    end
  end
end
