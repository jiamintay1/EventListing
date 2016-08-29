class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.date :date

      t.timestamps null: false
    end
  end
end
