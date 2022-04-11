class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    total = 0
    @birds_per_day.each do |bird_count|
      total += bird_count
    end
    return total
  end

  def busy_days
    @birds_per_day.count {|bird_count| bird_count >= 5}
  end

  def day_without_birds?
    @birds_per_day.any? {|bird_count| bird_count == 0}
  end
end
