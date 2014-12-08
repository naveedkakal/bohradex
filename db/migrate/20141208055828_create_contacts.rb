class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name,  null: false
      t.string :email,      null: false
      t.string :phone,      null: false
      t.string :gender,     null: false, limit: 1

      t.timestamps
    end
  end
end
