require 'running_week'

describe RunningWeek do
  describe 'initialization' do
    context 'given a date which is not a Monday' do
      it "raises a 'day not Monday' exception" do
        expect { RunningWeek.new(Date.parse("2015-01-13"), []) }.to raise_error("Day is not Monday")
      end
    end
  end
end
