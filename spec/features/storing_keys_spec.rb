feature 'storing a key/value pair' do
  it 'I can visit the "set" URL' do
    visit '/set'
    expect(page.status_code).to be(200)
  end
  it 'I can visit the "get" URL' do
    visit '/get'
    expect(page.status_code).to be(200)
  end
end
