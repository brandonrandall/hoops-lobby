class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :games
      t.string :name
      t.string :wins
      t.string :losses

      t.timestamps
    end
  end
end
