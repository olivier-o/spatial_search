class Sifter

  def initialize(args)
    @listings = Listing.where("distance < ?", args["distance"]).order(:distance)

    # Apply location criterion
    @listings.each_with_index { |listing, index|
      LocationCriterion.new(listing, index, @listings.count).score
    }

    # Apply Price criterion
    @listings.order(:price).each_with_index {|listing, index|
      PriceCriterion.new(listing, index, @listings.count).score
    }

    # TODO: implement other criteria
    # return listings sorted by computed score
    @listings.order(:score)
  end

  def listings
    @listings
  end
end
