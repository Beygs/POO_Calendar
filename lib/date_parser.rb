# frozen_string_literal: true

class DateParser
  attr_reader :date

  def initialize(string_date)
    @date = detect_type(string_date)
  end

  private

  def detect_type(string)
    case string
    when /le \d+ \w+ à \d+ h\s?\d*/
      parse_type_1(string)
    when /\w+ prochain à \d+ h\s?\d*/
      parse_type_2(string)
    else
      puts 'invalid format'
    end
  end

  def parse_type_1(string)
    month = Month.month_id(string.split[2])
    day = string.split[1]
    hour = string.split[4]
    minutes = string.split[-1] == 'h' ? 0 : string.split[-1]
    Time.new(Time.now.year, month + 1, day, hour, minutes).to_s
  end

  def parse_type_2(string)
    current_date = Time.now
    current_weekday = current_date.wday
    target_weekday = Day.weekday_to_id(string.split[0])
    target_day = (target_weekday - current_weekday) % 7
    target_day = target_day.zero? ? 7 : target_day
    target_date = current_date + target_day * 24 * 60 * 60
    hour = string.split[3]
    minutes = string.split[-1] == 'h' ? 0 : string.split[-1]
    Time.new(target_date.year, target_date.month, target_date.day, hour, minutes).to_s
  end
end
