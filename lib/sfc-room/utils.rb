#coding:UTF-8
require 'nkf'

module SFCRoom::Utils
  def self.greek_downcase str
    encoding = str.encoding
    return str.encode(Encoding::UTF_8).tr('Α-Ω','α-ω').encode(encoding)
  end
  def self.greek_upcase str
    encoding = str.encoding
    return str.encode(Encoding::UTF_8).tr('α-ω','Α-Ω').encode(encoding)
    str.tr('α-ω','Α-Ω')
  end
  def self.hankaku_zenkaku str
    encoding = str.encoding
    return NKF::nkf('-Z1 -Ww',str).encode(encoding)
  end

  def self.convert_for_search str
    self.hankaku_zenkaku self.greek_downcase(str).downcase
  end
end
