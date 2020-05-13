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

end
