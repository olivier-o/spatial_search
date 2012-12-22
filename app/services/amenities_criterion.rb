class AmenitiesCriterion
  include Decorator

  def score
    @decorated.score + compute_score(args)
  end

  private
    def compute_score
      self.normalize(index, max) * weight
    end
end
