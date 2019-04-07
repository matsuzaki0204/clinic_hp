class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :familyname
      t.string :firstname
      t.string :familykana
      t.string :firstkana
      t.string :gender
      t.string :department
      t.string :monday_am
      t.string :monday_pm
      t.string :tuesday_am
      t.string :tuesday_pm
      t.string :wednesday_am
      t.string :wednesday_pm
      t.string :thursday_am
      t.string :thursday_pm
      t.string :friday_am
      t.string :friday_pm
      t.string :saturday_am
      t.string :saturday_pm
      t.string :sunday_am
      t.string :sunday_pm
      t.string :enable_disable
      t.string :certification

      t.timestamps
    end
  end
end
