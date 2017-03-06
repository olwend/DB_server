
feature 'server' do
  scenario 'runs on localhost:4000' do
    visit('/')
    expect(page.status_code).to eq 200
    expect(page).to have_content "Simple Server"
  end

  scenario 'route set passes query string params to app' do
    visit('/set?somekey=a&somevalue=1')
    expect(page).to have_content "Set a = 1"
  end

  scenario 'route set handles no query string params to app' do
    visit('/set?somekey=&somevalue=')
    expect(page.status_code).to eq 200
    expect(page).to have_content "Set ="
  end

  scenario 'it responds to a request to give value stored at a key' do

  end
end
