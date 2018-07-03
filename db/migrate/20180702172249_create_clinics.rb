class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.string :clinicname
      t.text :clinicaddress

      t.timestamps
    end
  end
end
