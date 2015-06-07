class CreatePeopleAdminProfiles < ActiveRecord::Migration
  def change
    create_table :people_admin_profiles do |t|
      t.string :account
      t.text :body
      t.references :people_admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
