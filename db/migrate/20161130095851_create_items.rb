class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :content

      t.integer :current_num, default: 0
      t.integer :required_num, null: false

      t.integer :hits, default: 0
      t.integer :upvotes, default: 0

      t.timestamps null: false
    end
  end
end
