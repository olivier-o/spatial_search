class LocationCriterion
  include Criterion

  def initialize(entity, ranking, rankings)
    super
    @weight = 0.4
  end
end
