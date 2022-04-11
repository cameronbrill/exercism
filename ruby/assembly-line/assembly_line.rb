class AssemblyLine
  CARS_PER_HOUR = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    rate = CARS_PER_HOUR * @speed

    case @speed
    when 5..8
      rate *= 0.9
    when 9
      rate *= 0.8
    when 10
      rate *= 0.77
    end

    return rate
  end

  def working_items_per_minute
    return (production_rate_per_hour / 60).to_i 
  end
end
