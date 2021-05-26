require './lib/maxon/interface'

describe Maxon::Interface do
  describe '.notify' do
    it 'return passed text' do
      expect('Yet another text').to eq(described_class.notify('Yet another text'))
    end
  end

  describe '.error_message' do
    it 'return raise ArgumentError' do
      expect { described_class.error_message('error') }.to raise_error(ArgumentError, "error")
    end
  end
end
