collection @listings, object_root: false
  attributes :id, :name, :distance
  node  do |listing|
    { price: number_to_currency(listing.price), score: listing.score.round(2) }
  end
