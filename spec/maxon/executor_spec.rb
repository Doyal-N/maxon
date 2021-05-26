require './lib/maxon/executor'

describe Maxon::Executor do
  let(:fake_storage) { [] }
  let(:job) { described_class.new(fake_storage, text_stream) }
  let(:text_stream) {
    'Това45рищи! 33 реализация 128 намеченных плановых зада90ний обеспечивает широкому кругу (специа1000листов) участие в формировании 34 модели развития. Товарищи! рамки и м800есто обучения кадров 12 требуют от 100 нас ана100лиза новых предложений.'
  }

  describe '#light_extract' do
    it 'extracts only separate numbers' do
      job.light_extract

      expect(fake_storage).to match_array([33, 128, 34, 12, 100])
    end
  end

  describe '#deep_extract' do
    it 'extracts all numbers' do
      job.deep_extract

      expect(fake_storage).to match_array([45, 33, 128, 90, 1000, 34, 800, 12, 100, 100])
    end
  end
end
