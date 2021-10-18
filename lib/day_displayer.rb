# frozen_string_literal: true

class DayDisplayer
  def initialize(day_num = '', hour = '', event_title = '')
    @day_num = day_num.to_s
    @hour = hour.to_s
    @event_title = event_title.scan(/.{1,4}/).to_a
    @day_display = day_display
  end

  def day_display
    display = Array.new(5)

    display[0] = @day_num.ljust(9)
    display[1] = @hour.ljust(9)
    display[2] = @even_title[0].ljust(9) || ''.ljust(9)
    display[3] = @event_title[1].ljust(9) || ''.ljust(9)
    display[4] = @event_title[2].ljust(9) || ''.ljust(9)

    display
  end
end