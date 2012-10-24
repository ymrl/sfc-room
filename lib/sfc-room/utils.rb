#coding:UTF-8
require 'nkf'
if RUBY_VERSION < "1.9"
  require 'jcode' 
  require 'kconv'
end

module SFCRoom::Utils
  def self.greek_downcase str
    if RUBY_VERSION < "1.9"
      encoding = NKF.guess(str)
      return Kconv.kconv(Kconv.toutf8(str).tr('Α-Ω','α-ω'),encoding,Kconv::UTF8)
    else
      encoding = str.encoding
      return str.encode(Encoding::UTF_8).tr('Α-Ω','α-ω').encode(encoding)
    end
  end
  def self.greek_upcase str
    if RUBY_VERSION < "1.9"
      encoding = NKF.guess(str)
      return Kconv.kconv(Kconv.toutf8(str).tr('α-ω','Α-Ω'),encoding,Kconv::UTF8)
    else
      encoding = str.encoding
      return str.encode(Encoding::UTF_8).tr('α-ω','Α-Ω').encode(encoding)
    end
    str.tr('α-ω','Α-Ω')
  end
  def self.hankaku_zenkaku str
    if RUBY_VERSION < "1.9"
      encoding = NKF.guess(str)
      return Kconv.kconv(NKF::nkf('-Z1 -Ww',str),encoding,Kconv::UTF8)
    else
      encoding = str.encoding
      return NKF::nkf('-Z1 -Ww',str).encode(encoding)
    end
  end

  def self.convert_for_search str
    self.hankaku_zenkaku self.greek_downcase(str).downcase
  end
end
