class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :lesson_item_per_day
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
