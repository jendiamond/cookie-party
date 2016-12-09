class CreateVoteCards < ActiveRecord::Migration[5.0]
  def change
    create_table :vote_cards do |t|
      t.string :name
      t.integer :best_in_show
      t.integer :most_decorative
      t.integer :most_delicious
      t.integer :most_traditional

      t.timestamps
    end
  end
end
