class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :description
      t.string :topic_one
      t.string :topic_two
      t.string :topic_three
      t.string :speaker
      t.string :location
      t.date :date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
