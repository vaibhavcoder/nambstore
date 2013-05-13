class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, :precision=>8, :scale=>2 #precision = 8 digit of significace and scale = 2 ie 2 digits after decimal

      t.timestamps
    end
  end
end
