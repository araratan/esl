class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :member, index: true, foreign_key: true
      t.references :schedule, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
