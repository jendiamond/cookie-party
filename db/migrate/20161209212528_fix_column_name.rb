class FixColumnName < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :vote_cards, :best_in_show, :best_in_show_id
    rename_column :vote_cards, :most_delicious, :most_delicious_id
    rename_column :vote_cards, :most_decorative, :most_decorative_id
    rename_column :vote_cards, :most_traditional, :most_traditional_id
  end
end
