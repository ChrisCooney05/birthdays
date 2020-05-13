require 'birthday_list'

describe BirthdayList do

  it "Has a BirthdayList class" do
    expect(BirthdayList).to be
  end

  it "Makes a new Birthday list and stores birthday" do
    birthday_list = BirthdayList.new
    expect(birthday_list.add("Chris", "19/02/1991")).to eq([name: "Chris", dob: "19/02/1991"])
  end

  it "Responds to show" do
    birthday_list = BirthdayList.new
    expect(birthday_list).to respond_to(:show)
  end

  it "Shows a list of people when asked" do
    birthday_list = BirthdayList.new
    birthday_list.add("Chris Cooney", "19/02/1991")
    birthday_list.add("Ash Ketchum", "01/05/1990")
    birthday_list.add("Gary Oak", "14/03/1990")
    expect { birthday_list.show }.to output("Chris Cooney: 19/02/1991\nAsh Ketchum: 01/05/1990\nGary Oak: 14/03/1990\n").to_stdout
  end
end
