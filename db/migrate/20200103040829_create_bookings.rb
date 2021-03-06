class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :account, null: false, foreign_key: true
      t.references :tour, null: false, foreign_key: true
      t.bigint :account_id
      t.bigint :tour_id
      t.integer :amount
      t.bigint :total_price
      t.string :status
      t.string :rated

      t.timestamps
    end
  end
end
