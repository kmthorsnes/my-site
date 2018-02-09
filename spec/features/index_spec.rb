describe 'Index Page', type: :feature do
  it 'displays project list' do
    visit '/'

    expect(page).to have_css '.project'
    within '.project' do
    expect(page).to have_content 'FizzBuzz'
    end
  end

  it 'renders footer partial' do
    visit '/'

    expect(page).to have_css 'footertext'
    within '.footer' do
    expect(page).to have_content 'karlmagnus'
    end
  end
end
