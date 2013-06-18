class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.references :track
      t.string :title
      t.string :description
      t.string :speaker
      t.string :location
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
