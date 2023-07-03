class CreatePickups < ActiveRecord::Migration[7.0]
  def change
    create_table :pickups do |t|
      t.string :name
      t.references :trip, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
