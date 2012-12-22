class Listing < ActiveRecord::Base
  attr_accessible :distance, :name, :price
  attr_accessor :score

  def score
    @score || 0
  end
end
