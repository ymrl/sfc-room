#coding:UTF-8
require 'nkf'
require 'jcode' if RUBY_VERSION < "1.9"

module SFCRoom::Utils
  def self.greek_downcase str
    str.tr('Α-Ω','α-ω')
  end
  def self.greek_upcase str
    str.tr('α-ω','Α-Ω')
  end
  def self.hankaku_zenkaku str
    NKF::nkf('-Z1 -Ww',str)
  end

  def self.convert_for_search str
    self.hankaku_zenkaku self.greek_downcase(str).downcase
  end
end
