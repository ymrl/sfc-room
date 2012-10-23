#coding:UTF-8
require 'nkf'
module SFCRoom::Utils
  def self.greek_downcase str
    enc = str.encoding
    ret = ""
    str.each_char do |char|
      if char.match(/[Α-Ω]/)
        char = (char.ord + 32).chr(enc)
      end
      ret += char
    end
    return ret
  end
  def self.greek_upcase str
    enc = str.encoding
    ret = ""
    str.each_char do |char|
      if char.match(/[α-ω]/)
        char = (char.ord - 32).chr(enc)
      end
      ret += char
    end
    return ret
  end
  def self.hankaku_zenkaku str
    NKF::nkf('-Z1 -Ww',str)
  end

  def self.convert_for_search str
    self.hankaku_zenkaku self.greek_downcase(str).downcase
  end
end
