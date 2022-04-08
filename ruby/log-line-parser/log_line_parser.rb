class LogLineParser
  def initialize(line)
    tmp = line.split(":", 2)
    @level = tmp[0].gsub(/[\[\]]/, '').downcase
    @msg = tmp[1].strip
  end

  def message
    return @msg
  end

  def log_level
    return @level
  end

  def reformat
    return "#{@msg} (#{@level})"
  end
end
