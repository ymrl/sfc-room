#coding:utf-8
require File.dirname(__FILE__) + '/spec_helper.rb'
describe SFCRoom do
  include SFCRoom::Utils
  describe 'Utils' do
    down = 'αβγδεζηθικλμνξοπρςστυφχψω'
    up   = 'ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡ΢ΣΤΥΦΧΨΩ'
    other = 'hogehogeほげほげ'
    it 'can convert downcase greek to upcase ' do
      str = SFCRoom::Utils.greek_upcase(down)
      str.should eql(up)
    end
    it 'can convert upcase greek to downcase ' do
      str = SFCRoom::Utils.greek_downcase(up)
      str.should eql(down)
    end
    it 'not effect to other characters' do
      str = SFCRoom::Utils.greek_downcase(other)
      str.should eql(other)
      str = SFCRoom::Utils.greek_upcase(other)
      str.should eql(other)
      str = SFCRoom::Utils.greek_upcase(up)
      str.should eql(up)
      str = SFCRoom::Utils.greek_downcase(down)
      str.should eql(down)
    end
  end
end

