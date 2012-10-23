class SFCRoom::Room
  def initialize building,room,floor=nil
    @building = building
    @room = room
    @floor = floor
  end
  def to_s
    "#{building_in_japanese}#{@room}"
  end
  def to_greek
    "#{building_in_greek}#{@room}"
  end
  def to_roman
    "#{building_in_roman}#{@room}"
  end
  def building_in_japanese
    SFCRoom::Buildings::JapaneseName[@building]
  end
  def building_in_greek
    SFCRoom::Buildings::GreekChar[@building] || SFCRoom::Buildings::JapaneseName[@building]
  end
  def building_in_roman
    SFCRoom::Buildings::RomanChar[@building] || SFCRoom::Buildings::JapaneseName[@building]
  end
  def building_number_for_sfs
    SFCRoom::Buildings::SFSNumber[@building] || SFCRoom::Buildings::SFSNumber[SFCRoom::Buildings::Others]
  end
  attr_reader :building,:floor,:room
end
