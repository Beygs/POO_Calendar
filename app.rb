# frozen_string_literal: true

require 'bundler'
Bundler.require
require 'time'

require_relative('./lib/event')
require_relative('./lib/user')
require_relative('./lib/event_creator')
require_relative('./lib/calendar_displayer')
require_relative('./lib/day_displayer')
require_relative('./lib/month')
require_relative('./lib/day')
require_relative('./lib/date_parser')

julie = User.new('a@a.a', 23)
jean = User.new('b@b.b', 34)

past_event = Event.new('2021-08-15 08:00', 90, 'past', ['a@a.a', 'b@b.b'])
current_event = Event.new((Time.now - 30 * 60).to_s, 90, 'current', ['a@a.a', 'b@b.b'])
soon_event = Event.new((Time.now + 30 * 60).to_s, 90, 'soon', ['a@a.a', 'b@b.b'])
future_event = Event.new('2021-10-20 12:00', 30, 'test', ['a@a.a', 'b@b.b'])

test = CalendarDisplayer.new('octobre')

binding.pry
puts 'end of file'
