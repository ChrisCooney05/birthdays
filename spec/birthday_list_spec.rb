require 'birthday_list'
require 'timecop'

describe BirthdayList do

  it "Makes a new Birthday list and stores birthday" do
    expect(BirthdayList.new.add("Chris", "19/02/1991")).to eq([name: "Chris", dob: "19/02/1991"])
  end

  it "Responds to show" do
    expect(BirthdayList.new).to respond_to(:show)
  end

  it "Shows a list of people when asked" do
    birthday_list = BirthdayList.new
    birthday_list.add("Chris Cooney", "19/02/1991")
    birthday_list.add("Ash Ketchum", "01/05/1990")
    birthday_list.add("Gary Oak", "14/03/1990")
    expect { birthday_list.show }.to output("Chris Cooney: 19/02/1991\nAsh Ketchum: 01/05/1990\nGary Oak: 14/03/1990\n").to_stdout
  end

  it "prints out a birthday message when it is someones birthday" do
    Timecop.freeze(2020, 05, 01)
    birthday_list = BirthdayList.new
    birthday_list.add("Chris Cooney", "19/02/1991")
    birthday_list.add("Ash Ketchum", "01/05/1990")
    expect { birthday_list.bday_message }.to output("Happy Birthday Ash Ketchum! you are 30 years old today!\n").to_stdout
  end
end
