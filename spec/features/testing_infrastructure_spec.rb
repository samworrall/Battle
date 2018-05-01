
feature 'Testing infrastructure' do
    scenario 'Larry enters his wicked ass name' do
    visit('/')
    fill_in 'player1', with: 'Larry'
    fill_in 'player2', with: 'Judge Deathmun'
    click_button('Submit')
    expect(page).to have_content 'Larry'
    expect(page).to have_content 'Judge Deathmun'
  end

end
