class AddDetailsToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :how_many_people, :integer
  end
end
