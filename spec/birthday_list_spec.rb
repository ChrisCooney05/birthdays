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
end
