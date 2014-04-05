#coding:utf-8
require File.dirname(__FILE__) + '/spec_helper.rb'

describe SFCRoom do
  describe 'parser' do
    it 'raises ParseError' do
      expect{SFCRoom::parse('')}.to raise_error(SFCRoom::ParseError)
    end

    it 'can parse all roman classroom' do
      include SFCRoom
      room = SFCRoom.parse('i11')
      room.building.should eql(SFCRoom::Buildings::Iota)
      room.room.should eql('11')
      room.floor.should eql('1')
      room.source.should eql('i11')
    end
    it 'can parse greek classroom' do
      include SFCRoom
      room = SFCRoom.parse('ι411')
      room.building.should eql(SFCRoom::Buildings::Iota)
      room.room.should eql('411')
      room.floor.should eql('4')
      room.to_s.should eql('イオタ411')
      room.source.should eql('ι411')
    end

    it 'can parse japanese classroom' do
      room = SFCRoom.parse('ラムダ19')
      room.building.should eql(SFCRoom::Buildings::Lambda)
      room.room.should eql('19')
      room.floor.should eql('1')
      room.to_s.should eql('ラムダ19')
      room.source.should eql('ラムダ19')
    end

    it 'can parse delta classroom' do
      room = SFCRoom.parse('ΔS113')
      room.building.should eql(SFCRoom::Buildings::Delta)
      room.room.should eql('S113')
      room.floor.should eql('s1')
      room.to_s.should eql('デルタS113')
      room.source.should eql('ΔS113')
    end

    it 'can parse tau loft' do
      room = SFCRoom.parse('タウ館2階ロフト')
      room.building.should eql(SFCRoom::Buildings::Tau)
      room.room.should eql('20')
      room.floor.should eql('2')
      room.to_s.should eql('タウ20')
      room.source.should eql('タウ館2階ロフト')
    end

    it 'can parse IIJHouse' do
      room = SFCRoom.parse('IIJハウス')
      room.building.should eql(SFCRoom::Buildings::Nu)
      room.floor.should eql('1')
      room.to_s.should eql('ニュー')
      room.source.should eql('IIJハウス')
    end


  end
end
