class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
