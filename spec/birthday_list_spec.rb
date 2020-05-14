require 'birthday_list'
require 'timecop'

describe BirthdayList do
  subject(:list) { BirthdayList.new }

  it "Makes a new Birthday list and stores birthday" do
    expect(list.add("Chris", "19/02/1991")).to eq([name: "Chris", dob: "19/02/1991"])
  end

  it "Responds to show" do
    expect(list).to respond_to(:show)
  end

  it "Shows a list of people when asked" do

    list.add("Chris Cooney", "19/02/1991")
    list.add("Ash Ketchum", "01/05/1990")
    list.add("Gary Oak", "14/03/1990")
    expect { list.show }.to output("Chris Cooney: 19/02/1991\nAsh Ketchum: 01/05/1990\nGary Oak: 14/03/1990\n").to_stdout
  end

  it "prints out a birthday message when it is someones birthday" do
    Timecop.freeze(2020, 05, 01)
    list.add("Chris Cooney", "19/02/1991")
    list.add("Ash Ketchum", "01/05/1990")
    expect { list.bday_message }.to output("Happy Birthday Ash Ketchum! you are 30 years old today!\n").to_stdout
  end
end
