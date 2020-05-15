require 'time'
##https://www.rubyguides.com/2015/12/ruby-time/ - link for how to use date/time

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
      puts "Happy Birthday #{person[:name]}! you are #{age(person)} years old today!" if today?(person)
    end
  end


  private


  def date_today
    Time.now.strftime("%d/%m")
  end

  def today?(person)
    Time.parse(person[:dob]).strftime("%d/%m") == date_today()
  end

  def age(person)
    Time.now.year - Time.parse(person[:dob]).year
  end
end
