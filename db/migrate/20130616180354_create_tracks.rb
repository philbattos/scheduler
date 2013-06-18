class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.references :conference
      t.string :title
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
