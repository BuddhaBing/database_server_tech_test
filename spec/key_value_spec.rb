describe KeyValue do
  subject { described_class.new("somekey", "somevalue") }
  context 'Creation: ' do
    it 'creates an instance of itself with a class method' do
      expect(KeyValue.create("somekey", "somevalue").class).to eq KeyValue
    end
    it 'accesses the instance of itself with a class method' do
      expect(KeyValue.instance.class).to eq KeyValue
    end
    it 'stores the key value pair that is passed in' do
      expect(subject.pairs["somekey"]).to eq("somevalue")
    end
    it 'allows to add additional key value pairs' do
      KeyValue.create("somekey", "somevalue")
      key_val = KeyValue.instance
      key_val.add_pair("someotherkey", "someothervalue")
      expect(key_val.pairs["someotherkey"]).to eq("someothervalue")
    end
  end
end
