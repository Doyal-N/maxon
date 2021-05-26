require './lib/maxon/store'

describe Maxon::Store do
  let(:storage) { SortedSet.new([12, 23, 1, 43, 67, 2, 90, 11]) }
  let(:store) { described_class.new(storage, 4) }

  describe '#show_result' do
    it 'return specified number of elements' do
      expect(store.show_result).to match_array([90, 67, 43, 23])
    end
  end

  describe '#clear_storage' do
    it 'return empty set' do
      expect(store.clear_storage).to be_empty
    end
  end
end
