class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :table
      t.integer :number_of_guests
      t.datetime :start
      t.datetime :end
      
      

      t.timestamps
    end
  end
end
