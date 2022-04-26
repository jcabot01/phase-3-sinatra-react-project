class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.integer :amount
      t.integer :event_id
      t.timestamps
    end
  end
end
