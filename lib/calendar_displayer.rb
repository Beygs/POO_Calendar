# frozen_string_literal: true

class CalendarDisplayer
  def initialize(month)
    @month_length = Month.duration(month)
    @month_start = Month.weekday_start(month)
    @events = Event.find_events_by_month((Month.month_id(month) + 1).to_s)
    @display_calendar = display_month
  end

  def display_month
    display = []
    @month_length.times do |i|
      events = 
      display << DayDisplayer.new(i + 1)
    end
    display
  end

  def display
    puts @display_calendar.map { |day| day.day_display }
  end
end
