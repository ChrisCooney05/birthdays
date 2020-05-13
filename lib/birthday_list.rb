class BirthdayList

  def initialize
    @list = []
  end

  def add(name, dob)
    @list.push(name: name, dob: dob)
  end

  def show
  end
  
end
