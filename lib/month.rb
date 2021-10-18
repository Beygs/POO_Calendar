# frozen_string_literal: true

module Month
  MONTHS = %w[janvier février mars avril mai juin
              juillet août septembre octobre novembre décembre].freeze

  def self.month_id(month)
    MONTHS.find_index(month)
  end

  def self.duration(month)
    durations = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    durations[month_id(month)]
  end

  def self.weekday_start(month)
    Time.new(Time.now.year, month_id(month) + 1, 1).wday
  end
end
