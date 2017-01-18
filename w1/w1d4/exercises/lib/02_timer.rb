class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def hours
    Integer(seconds / 3600)
  end

  def minutes
    Integer((seconds % 3600) / 60)
  end

  def remaining_seconds
    Integer((seconds % 3600) % 60)
  end

  def time_string
    "#{padded(hours)}:#{padded(minutes)}:#{padded(remaining_seconds)}"
  end

  def padded(time)
    if time == 0
      return "00"
    elsif time < 10
      return "0#{time}"
    else
      "#{time}"
    end
  end
end
