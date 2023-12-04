require 'date'

class Event
  attr_reader :name, :date, :category

  def initialize(name, date, category)
    @name = name
    @date = date
    @category = category
  end
end

class PeriodicEvent < Event
  attr_reader :period_days

  def initialize(name, date, category, period_days)
    super(name, date, category)
    @period_days = period_days
  end
end

class SportsEvent < Event
  attr_reader :sport

  def initialize(name, date, category, sport)
    super(name, date, category)
    @sport = sport
  end
end

class PoliticalEvent < Event
  attr_reader :country

  def initialize(name, date, category, country)
    super(name, date, category)
    @country = country
  end
end

class Holiday < PeriodicEvent
  attr_reader :country

  def initialize(name, date, category, country, period_days)
    super(name, date, category, period_days)
    @country = country
    @period_days = 365
  end
end

class Organizer
  attr_reader :events

  def initialize(events)
    @events = events
  end

  def sort_by_date
    @events.sort_by(&:date)
  end

  def sort_by_category
    @events.sort_by(&:category)
  end

  def get_by_date(date)
    @events.select { |event| event.date == date }
  end

  def get_by_range(start_date, end_date)
    @events.select { |event| (start_date..end_date).cover?(event.date) }
  end

  def get_closest_event(date)
    @events.min_by { |event| (event.date - date).abs }
  end
  def view_events
    puts "All Events:"
    @events.each { |event| puts "#{event.name} (#{event.date}, #{event.category})" }
  end
end

def main
  event1 = Event.new("Event 1", Date.new(2023, 12, 5), "Category A")
  event2 = SportsEvent.new("Sports Event", Date.new(2023, 12, 10), "Category B", "Football")
  event3 = PoliticalEvent.new("Political Event", Date.new(2023, 12, 15), "Category C", "Country X")
  event4 = Holiday.new("New Year", Date.new(2024, 1, 1), "Category D", "Country Y", 365)

  organizer = Organizer.new([event1, event2, event3, event4])

  loop do
    puts "\nOrganizer"
    puts "1. View events"
    puts "2. Sort by date"
    puts "3. Sort by category"
    puts "4. Select events by date"
    puts "5. Select events by date range"
    puts "6. Find the closest event"
    puts "7. Exit"

    choice = gets.chomp.to_i

    case choice
    when 1
      organizer.view_events
    when 2
      sorted_events = organizer.sort_by_date
      puts "Events sorted by date:"
      sorted_events.each { |event| puts "#{event.name} (#{event.date}, #{event.category})" }
    when 3
      sorted_events = organizer.sort_by_category
      puts "Events sorted by category:"
      sorted_events.each { |event| puts "#{event.name} (#{event.date}, #{event.category})" }
    when 4
      date = get_date("Enter the date to select events")
      selected_events = organizer.get_by_date(date)
      display_selected_events(selected_events)
    when 5
      start_date = get_date("Enter the start date")
      end_date = get_date("Enter the end date")
      selected_events = organizer.get_by_range(start_date, end_date)
      display_selected_events(selected_events)
    when 6
      date = get_date("Enter the current date")
      closest_event = organizer.get_closest_event(date)
      puts "Closest event: #{closest_event.name} (#{closest_event.date}, #{closest_event.category})"
    when 7
      puts "Thank you for using the organizer. Goodbye!"
      break
    else
      puts "Invalid choice. Please try again."
    end
  end
end

def display_selected_events(events)
  puts "Selected events:"
  events.each { |event| puts "#{event.name} (#{event.date}, #{event.category})" }
end

def get_date(prompt)
  print "#{prompt} (yyyy-mm-dd): "
  Date.parse(gets.chomp)
end

#main
