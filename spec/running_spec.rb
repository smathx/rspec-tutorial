require 'running'

describe Run do
  subject do
    Run.new(duration: 32,
            distance: 5.2,
            timestamp: '2014-12-22 20:30')
  end

  describe 'attributes' do
    it { is_expected.to respond_to(:duration) }
    it { is_expected.to respond_to(:distance) }
    it { is_expected.to respond_to(:timestamp) }
  end

  describe '#timestamp' do
    it 'returns a DateTime' do
      expect(subject.timestamp).to be_a(DateTime)
    end
  end
end
