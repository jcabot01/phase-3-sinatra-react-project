class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.integer :event_cost
      t.integer :category_id
      t.timestamps
    end
  end
end
