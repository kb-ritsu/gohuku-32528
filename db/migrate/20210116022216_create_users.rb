class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name,           null: false, default: ""
      t.string :last_name ,           null: false, default: ""
      t.string :first_name_katakana,  null: false, default: ""
      t.string :last_name_katakana,   null: false, default: ""
      t.date :birthday
      t.string :phone_number,                    default: ""
      t.string :telephone_number,                default: ""
      t.string :address_number,       null: false, default: ""
      t.string :city,                 null: false, default: ""
      t.string :building,                          default: ""
      t.string :address,              null: false, default: ""
      t.references :staff,         null: false,foreign_key:true
      t.text :detail
      t.integer :gender_id,           null: false

      t.timestamps
    end
  end
end
