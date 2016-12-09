class VoteCard < ApplicationRecord
  belongs_to :best_in_show, class_name: "Entry", inverse_of: :best_in_show_votes
  belongs_to :most_delicious, class_name: "Entry", inverse_of: :most_delicious_votes
  belongs_to :most_decorative, class_name: "Entry", inverse_of: :most_decorative_votes
  belongs_to :most_traditional, class_name: "Entry", inverse_of: :most_traditional_votes
end
