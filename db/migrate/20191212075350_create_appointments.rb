class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :admin, foreign_key: true
      t.integer :duration

      t.timestamps
    end
  end
end
