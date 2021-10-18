# frozen_string_literal: true

module Day
  WEEKDAYS = %w[dimanche lundi mardi mercredi jeudi vendredi samedi].freeze

  def self.id_to_weekday(weekday_id)
    WEEKDAYS[weekday_id]
  end

  def self.weekday_to_id(weekday)
    WEEKDAYS.find_index(weekday)
  end
end
