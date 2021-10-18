# frozen_string_literal: true

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  @@all_events = []

  def initialize(start_date, duration, title, attendees)
    @start_date = start_date
    @duration = duration
    @title = title
    @attendees = attendees
    @@all_events << self
  end

  def self.all
    @@all_events
  end

  def postpone_24h
    @start_date += 24 * 60 * 60
  end

  def end_date
    @start_date + @duration * 60
  end

  def past?
    Time.now > @start_date
  end

  def future?
    Time.now < @start_date
  end

  def soon?
    @start_date - Time.now < 30 * 60 && future?
  end

  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{start_date}"
    puts "Durée : #{duration} minutes"
    puts "Invités : #{attendees.join(', ')}"
  end

  def self.find_events_by_month(month)
    @@all_events.select{ |e| e.start_date.split('-')[1] == month }
  end

  def self.find_event_by_date(date)
    @@all_event.select{ |e| e.start_date }
  end
end
