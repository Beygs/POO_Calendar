# frozen_string_literal: true

class EventCreator
  def initialize
    @title = ask_title
    @start_date = ask_start_date
    @duration = ask_duration
    @attendees = ask_attendees

    event = Event.new(@start_date, @duration, @title, @attendees)

    puts "Voilà ! L'événement est créé ! En voici un aperçu :"

    event.to_s
  end

  private

  def ask_title
    puts 'Coucou mon loulou ! Alors comme ça on veut créer un événement ?'
    puts "Ca tombe bien, c'est mon taff. Tu veux l'appeler comment ?"
    print '> '
    gets.chomp
  end

  def ask_start_date
    puts 'Ok... Quel nom de merde... Enfin bon ! Quand aura-t-il lieu ?'
    print '> '
    DateParser.new(gets.chomp).date
  end

  def ask_duration
    puts 'Nice, il va durer combien de temps ? (en minutes)'
    print '> '
    gets.chomp.to_i
  end

  def ask_attendees
    puts 'Parfait ! Qui participe ?'
    print '> '
    gets.chomp.split(', ')
  end
end
