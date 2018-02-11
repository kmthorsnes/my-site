describe 'Index Page', type: :feature do
  it 'Displays project list' do
    visit '/'

    expect(page).to have_css '.project'
    within '.project' do
    expect(page).to have_content 'FizzBuzz'
    end
  end

  it 'Renders footer partial' do
    visit '/'

    expect(page).to have_css 'footertext'
    within '.footer' do
    expect(page).to have_content 'karlmagnus'
    end
  end

  it 'Displays work list' do
    visit '/'

    expect(page).to have_css '.work'
    within '.work' do
    expect(page).to have_content 'work'
    end
  end

  it 'Displays education list' do
    visit '/'

    expect(page).to have_css '.edutext'
    within '.education' do
    expect(page).to have_content 'education'
    end
  end

end
