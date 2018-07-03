class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :doctorname
      t.string :doctoremail
      t.string :doctorspeciality
      t.string :doctornumber
      t.string :doctorimage
 t.references :clinic, index: true

 t.timestamps null: false
 end
 add_foreign_key :doctors, :clinics
  end
end 
