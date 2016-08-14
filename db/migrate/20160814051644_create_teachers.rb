class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.time :from_time
      t.time :to_time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
