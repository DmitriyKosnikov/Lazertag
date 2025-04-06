class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.date :date
      t.string :title

      t.timestamps
    end
  end
end
