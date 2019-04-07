class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :patient_id
      t.string :familyname
      t.string :firstname
      t.string :familykana
      t.string :firstkana
      t.string :gender
      t.string :password
      t.text :email
      t.date :birthday
      t.string :zip
      t.string :pref
      t.string :city
      t.string :addr1
      t.string :addr2
      t.string :tel
      t.string :administrator

      t.timestamps
    end
  end
end
