#coding:utf-8
module SFCRoom

  def parse(str)
    building = nil
    q = Utils.convert_for_search(str)
    SFCRoom::Buildings::List.each do |b|
      arr = [b.to_s]
      arr.push SFCRoom::Buildings::JapaneseName[b]
      arr.push SFCRoom::Buildings::RomanChar[b]
      arr.push SFCRoom::Buildings::GreekChar[b]
      arr += SFCRoom::Buildings::Aliases[b]
      arr.delete(nil)
      arr.each do |word|
        if q.match(/^#{Utils.convert_for_search word}/)
          building = b
          break
        end
      end
      break if building
    end
    number = nil
    floor = nil
    if building == SFCRoom::Buildings::Delta
      if m = q.match(/([ns])(\d+)/)
        number = "#{m[1]}#{m[2]}".upcase
        floor = "#{m[1]}#{m[2][0,1]}"
      end
    elsif building == SFCRoom::Buildings::Tau && m = q.match(/([23][f階])?(ロフト|loft)/)
      if m[1]
        number = "#{m[1][0,1]}0"
        floor = m[1][0,1]
      else
        number = "20"
        floor = "2"
      end
    elsif building == SFCRoom::Buildings::Nu && m = q.match(/iij|docomo|ドコモ|舘内|森|dnp/i)
      if q.match(/iij/i)
        floor = SFCRoom::Floors::IIJHouse
      elsif q.match(/docomo|ドコモ/i)
        floor = SFCRoom::Floors::DocomoHouse
      elsif q.match(/dnp/i)
        floor = SFCRoom::Floors::DNPHouse
      elsif q.match(/舘内/i)
        floor = SFCRoom::Floors::TateuchiHouse
      elsif q.match(/森/i)
        floor = SFCRoom::Floors::MoriAtelier
      end
    elsif m = q.match(/(\d+)/)
      number = m[1]
      floor = m[1][0,1]
    end

    return Room.new building,number,floor
  end
  module_function :parse
end

