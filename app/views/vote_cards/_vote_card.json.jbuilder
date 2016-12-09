json.extract! vote_card, :id, :name, :best_in_show, :most_decorative, :most_delicious, :most_traditional, :created_at, :updated_at
json.url vote_card_url(vote_card, format: :json)