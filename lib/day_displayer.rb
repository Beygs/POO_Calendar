# frozen_string_literal: true

class DayDisplayer
  attr_accessor :day_display
  
  def initialize(day_num = '', event = '')
    @day_num = day_num.to_s
    @hour = event.start_date.hour.to_s
    @event_title = event.title.scan(/.{1,4}/).to_a
    @day_display = day_display
  end

  def day_display
    display = Array.new(5)

    display[0] = @day_num.ljust(9)
    display[1] = @hour.ljust(9)
    display[2] = @event_title[0].nil? ? ' '.ljust(9) : @event_title[0].ljust(9)
    display[3] = @event_title[1].nil? ? ' '.ljust(9) : @event_title[0].ljust(9)
    display[4] = @event_title[2].nil? ? ' '.ljust(9) : @event_title[0].ljust(9)

    display
  end
end
