require 'spec_helper'

describe ClockAngleCalculator do
  it 'has a version number' do
    expect(ClockAngleCalculator::VERSION).not_to be nil
  end


  describe '#calculate_angle' do

    it 'calculates -1:15' do
      expect(ClockAngleCalculator.calculate_angle(-1, 15)).to eq(nil)
    end

    it 'calculates 13:15' do
      expect(ClockAngleCalculator.calculate_angle(13, 15)).to eq(nil)
    end

    it 'calculates 12:-1' do
      expect(ClockAngleCalculator.calculate_angle(12, -1)).to eq(nil)
    end

    it 'calculates 12:60' do
      expect(ClockAngleCalculator.calculate_angle(12, 60)).to eq(nil)
    end

    it 'calculates 12:15' do
      expect(ClockAngleCalculator.calculate_angle(12, 15)).to eq(82.5)
    end

    it 'calculates 1:15' do
      expect(ClockAngleCalculator.calculate_angle(1, 15)).to eq(52.5)
    end

    it 'calculates 1:26' do
      expect(ClockAngleCalculator.calculate_angle(1, 26)).to eq(113)
    end

    it 'calculates 1:27' do
      expect(ClockAngleCalculator.calculate_angle(1, 27)).to eq(118.5)
    end

    it 'calculates 11:04' do
      expect(ClockAngleCalculator.calculate_angle(11, 4)).to eq(52)
    end

    it 'calculates 12:00' do
      expect(ClockAngleCalculator.calculate_angle(12, 0)).to eq(0)
    end

  end

  describe '#calculate_angle_datetime' do
    #DateTime.new(now.year, now.month, now.day, 0, 0, 0, 0) HOUR, MINUTE, SECOND and OFFSET (timezone)
    let (:now) { Time.now }

    it 'returns nil for non datetime object - integer' do
      expect(ClockAngleCalculator.calculate_angle_datetime(1)).to eq(nil)
    end

    it 'returns nil for non datetime object - string' do
      expect(ClockAngleCalculator.calculate_angle_datetime("String")).to eq(nil)
    end

    it 'calculates a value' do
      expect(ClockAngleCalculator.calculate_angle_datetime(Time.now)).to_not eq(nil)
    end

    it 'calculates a value' do
      expect(4).to_not eq(nil)
    end

    it 'calculates 12:15' do
      expect(ClockAngleCalculator.calculate_angle_datetime(DateTime.new(now.year, now.month, now.day, 12, 15, 0, 0))).to eq(82.5)
    end

    it 'calculates 1:15' do
      expect(ClockAngleCalculator.calculate_angle_datetime(DateTime.new(now.year, now.month, now.day, 1, 15, 0, 0))).to eq(52.5)
    end

    it 'calculates 1:26' do
      expect(ClockAngleCalculator.calculate_angle_datetime(DateTime.new(now.year, now.month, now.day, 1, 26, 0, 0))).to eq(113)
    end

    it 'calculates 1:27' do
      expect(ClockAngleCalculator.calculate_angle_datetime(DateTime.new(now.year, now.month, now.day, 1, 27, 0, 0))).to eq(118.5)
    end

    it 'calculates 11:04' do
      expect(ClockAngleCalculator.calculate_angle_datetime(DateTime.new(now.year, now.month, now.day, 11, 4, 0, 0))).to eq(52)
    end

    it 'calculates 12:00' do
      expect(ClockAngleCalculator.calculate_angle_datetime(DateTime.new(now.year, now.month, now.day, 12, 0, 0, 0))).to eq(0)
    end

  end
end
