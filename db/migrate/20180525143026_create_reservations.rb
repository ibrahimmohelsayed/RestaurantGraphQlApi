class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :time
      t.integer :seats
      t.references :customer, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
