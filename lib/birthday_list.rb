require 'date'

class BirthdayList

  def initialize
    @list = []
  end

  def add(name, dob)
    @list.push(name: name, dob: dob)
  end

  def show
    @list.each do |person|
      puts "#{person[:name]}: #{person[:dob]}"
    end
  end

  def bday_message
    @list.each do |person|
      if today?(person)
        puts "Happy Birthday #{person[:name]}! you are #{age(person)} years old today!"
      end
    end
  end

  private

  def date_today
    Time.now.strftime("%d/%m")
  end

  def today?(person)
    Date.parse(person[:dob]).strftime("%d/%m") == date_today
  end

  def age(person)
    Time.now.year - Date.parse(person[:dob]).year
  end

end
