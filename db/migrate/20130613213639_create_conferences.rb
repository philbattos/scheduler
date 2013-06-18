class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :slug
      t.string :name
      t.string :location
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
    add_index :conferences, :slug
  end
end
