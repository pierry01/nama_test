class CreateNamas < ActiveRecord::Migration[5.2]
  def change
    create_table :namas do |t|
      t.string :buyer, null: false
      t.text :description, null: false
      t.float :price, null: false
      t.integer :quantity, null:false
      t.string :address,  null: false
      t.string :provider, null: false

      t.timestamps
    end
  end
end
