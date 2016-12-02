class CreateItemInProcesses < ActiveRecord::Migration
  def change
    create_table :item_in_processes do |t|
      t.integer :user_id, null: false
      t.integer :item_id, null: false

      t.timestamps null: false
    end
  end
end
