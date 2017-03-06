feature 'Storing and retrieving key/value pairs' do
  context 'storing a key/value pair' do
    it 'I can visit the "set" URL' do
      visit '/set'
      expect(page.status_code).to be(200)
      expect(page).not_to have_content('Key value pair stored')
    end
    it 'I can store a key value pair by passing them as URL params' do
      visit '/set?somekey=somevalue'
      expect(page.status_code).to be(200)
      expect(page).to have_content("Key value pair stored")
    end
  end
  context 'retrieving a value from a key' do
    it 'I can visit the "get" URL' do
      visit '/get'
      expect(page.status_code).to be(200)
    end
    it 'I can retrieve a value by passing the corresponding key as a URL param' do
      visit '/set?somekey=somevalue'
      visit '/get?key=somekey'
      expect(page.status_code).to be(200)
      expect(page).to have_content('somevalue')
    end
  end
end
