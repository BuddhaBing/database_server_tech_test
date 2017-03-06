feature 'Storing and retrieving key/value pairs' do
  context 'storing a key/value pair' do
    it 'I can visit the "set" URL' do
      visit '/set'
      expect(page.status_code).to be(200)
      expect(page).not_to have_content("Key value pair stored")
    end
    it 'I can store a key value pair by passing them as URL params' do
      visit '/set?somekey=someval'
      expect(page.status_code).to be(200)
      expect(page).to have_content("Key value pair stored")
    end
  end
  context 'retrieving a value from a key' do
    it 'I can visit the "get" URL' do
      visit '/get'
      expect(page.status_code).to be(200)
    end
  end
end
