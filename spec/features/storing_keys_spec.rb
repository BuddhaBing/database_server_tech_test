feature 'Storing and retrieving key/value pairs using the API' do
  describe 'API' do
    it 'I can store a key value pair by passing them as URL params' do
      post "http://localhost:4000/set?somekey=somevalue"
      expect_json(somekey: 'somevalue')
    end

    it 'I can retrieve a value by passing the corresponding key as a URL param' do
      get "http://localhost:4000/get?key=somekey"
      expect_json(key: 'somevalue')
    end
  end
end
