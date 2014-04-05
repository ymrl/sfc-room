#coding:utf-8
require File.dirname(__FILE__) + '/spec_helper.rb'

describe SFCRoom do
  describe SFCRoom::Room do
    let :building do
      SFCRoom::Buildings::Tau
    end

    let :room do
      "20"
    end

    let :floor do
      '2'
    end

    let :source do
      'タウ館2階ロフト'
    end

    context 'initialize' do
      it 'can be initialized with building' do
        room = SFCRoom::Room.new(building: building)
        expect(room).to be_instance_of SFCRoom::Room
      end

      it 'can not be initialized without building' do
        expect{ SFCRoom::Room.new }.to raise_error(ArgumentError)
      end
    end

    context 'instance' do
      let :instance do
        SFCRoom::Room.new(building: building, room: room, floor: floor, source: source)
      end

      it 'has room' do
        expect(instance.room).to eq room
      end

      it 'has building' do
        expect(instance.building).to eq building
      end

      it 'has floor' do
        expect(instance.floor).to eq floor
      end

      it 'has source' do
        expect(instance.source).to eq source
      end
    end
  end
end
