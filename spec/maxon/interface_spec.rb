require './lib/maxon/interface'

describe Maxon::Interface do
  describe '.notify' do
    it 'return passed text' do
      text = 'Yet another text'
      result = Maxon::Interface.notify(text)

      expect(text).to eq(result)
    end
  end

  describe '.error_message' do
    it 'return raise ArgumentError' do
      expect { Maxon::Interface.error_message('error') }.to raise_error(ArgumentError, "error")
    end
  end
end
