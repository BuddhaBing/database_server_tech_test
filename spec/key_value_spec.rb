describe KeyValue do
  subject { described_class.new }
  context 'Creation: ' do
    it 'creates an instance of itself with a class method' do
      expect(KeyValue.create.class).to eq KeyValue
    end
    it 'accesses the instance of itself with a class method' do
      expect(KeyValue.instance.class).to eq KeyValue
    end
  end
  context 'Adding key value pairs' do
    before(:each) do
      KeyValue.create
      subject { KeyValue.instance }
      subject.add_pair("somekey", "somevalue")
    end
    it 'stores the key value pair that is passed in' do
      expect(subject.pairs["somekey"]).to eq("somevalue")
    end
    it 'allows to add additional key value pairs' do
      subject.add_pair("someotherkey", "someothervalue")
      expect(subject.pairs["someotherkey"]).to eq("someothervalue")
    end
  end
end
