require "clock_angle_calculator/version"

module ClockAngleCalculator
  
  #given a datetime, model the time on an analog clock
  #return the angle between the hour and minute hands on the clock
  def self.calculate_angle_datetime(datetime)
    puts datetime
    if datetime.is_a?(DateTime) || datetime.is_a?(Time) || datetime.is_a?(Date)
      hour = (datetime.strftime("%H")).to_f % 12
      minute = datetime.strftime("%M").to_f
      return calculate_angle_helper(hour, minute)
    else
      return nil
    end
  end

  #given an hour and minute, model the time on an analog clock
  #return the angle between the hour and minute hands on the clock
  def self.calculate_angle(hour, minute)
    return calculate_angle_helper(hour, minute)
  end

  #private helper method used to determine the angle
  def self.calculate_angle_helper(hour, minute)

    if hour < 0 || hour > 12 || minute < 0 || minute > 59
      return nil
    end

    hourly_degree = (360.0 / 12.0)
    minute_degree = (360.0 / 60.0)

    minute_angle = (minute_degree * (minute % 60)).to_f
    hour_angle = ((hourly_degree * (hour % 12)) + ((minute / 60.0) * hourly_degree)).to_f

    angle = (hour_angle - minute_angle).abs
    if angle > 180
      angle = 360 - angle
    end

    return angle
  end

  private_class_method :calculate_angle_helper
end
