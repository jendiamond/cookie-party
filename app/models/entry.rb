class Entry < ApplicationRecord
  has_many :best_in_show_votes, class_name: "VoteCard", inverse_of: :best_in_show, foreign_key: :best_in_show_id
  has_many :most_delicious_votes, class_name: "VoteCard", inverse_of: :most_delicious, foreign_key: :most_delicious_id
  has_many :most_decorative_votes, class_name: "VoteCard", inverse_of: :most_decorative, foreign_key: :most_decorative_id
  has_many :most_traditional_votes, class_name: "VoteCard", inverse_of: :most_traditional, foreign_key: :most_traditional_id
end
