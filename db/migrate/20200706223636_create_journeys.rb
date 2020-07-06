class CreateJourneys < ActiveRecord::Migration[5.1]
  def change
    create_table :journeys do |t|
      t.datetime :start_journey
      t.datetime :end_journey
      t.time :worked_hours
      t.time :lunch_start
      t.time :lunch_end
      t.time :lunch_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
