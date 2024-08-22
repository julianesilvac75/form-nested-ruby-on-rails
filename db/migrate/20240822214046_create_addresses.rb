class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :city
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
