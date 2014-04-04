class SFCRoom::Room
  def initialize(opts={})
    {:building => nil, :room => nil, :floor => nil, :source => nil}.each do |k,v|
      opts[k] = v unless opts.has_key? k
    end
    raise ArgumentError, "building must be String" unless opts[:building]
    @building = opts[:building]
    @room = opts[:room]
    @floor = opts[:floor]
    @source = opts[:source]
  end
  def inspect
    "[SFCRoom #{to_roman}]"
  end
  def to_s
    to_japanese
  end
  def to_greek
    "#{building_in_greek}#{@room}"
  end
  def to_roman
    "#{building_in_roman}#{@room}"
  end
  def to_japanese
    "#{building_in_japanese}#{@room}"
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
  attr_reader :building,:floor,:room,:source
end
