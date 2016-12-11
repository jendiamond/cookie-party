class Results < ApplicationRecord
  def initialize(entries)
    @entries = entries
  end

  def best_in_show
    @entries.max_by do |entry|
      entry.best_in_show_votes.count
    end
  end

  def most_delicious
    @entries.max_by do |entry|
      entry.most_delicious_votes.count
    end
  end

  def most_decorative
    @entries.max_by do |entry|
      entry.most_decorative_votes.count
    end
  end
  
  def most_traditional
    @entries.max_by do |entry|
      entry.most_traditional_votes.count
    end
  end
end
