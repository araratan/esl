class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :schedule_date
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
