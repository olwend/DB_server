
feature 'server' do
  scenario 'runs on localhost:4000' do
    visit('/')
    expect(page).to have_content "Simple Server"
  end

  scenario 'has route set' do
    visit('/set')
    expect(page).to have_content "Set route exists"
  end
end
