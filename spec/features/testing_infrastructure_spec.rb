
feature 'Testing infrastructure' do
    scenario 'Larry enters his wicked ass name' do
    sign_in_and_play
    expect(page).to have_content 'Larry'
    expect(page).to have_content 'Judge Deathmun'
  end

  scenario 'play screen displays HP' do
    sign_in_and_play
    expect(page).to have_content '100HP'
  end

end
