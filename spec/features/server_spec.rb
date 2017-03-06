
feature 'server' do
  scenario 'runs on localhost:4000' do
    visit('/')
    expect(page).to have_content "Simple Server"
  end

  scenario 'route set passes query string params to app' do
    visit('/set?somekey=a&somevalue=1')
    expect(page).to have_content "Set a = 1"

  end
end
