module Criterion
  def initialize(decorated,ranking, rankings)
    @decorated = decorated
    @ranking = ranking
    @rankings = rankings
    @weight = 0.15
  end

  def normalize
    (@ranking / @rankings.to_f * 100).round(2)
  end

  def score
    @decorated.score += compute_score
  end

  private
    def compute_score
      self.normalize * @weight
    end

end
