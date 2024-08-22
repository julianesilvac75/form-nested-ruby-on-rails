class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
