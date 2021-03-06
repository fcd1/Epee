class CreateDepositors < ActiveRecord::Migration
  def change
    create_table :depositors do |t|
      t.string :name, null: false
      t.string :basic_authentication_user_id, null: false
      t.string :basic_authentication_password, null: false
      t.text :allowed_mime_types

      t.timestamps null: false
    end
    add_index :depositors, :name, unique: true
    add_index :depositors, :basic_authentication_user_id, unique: true
  end
end
