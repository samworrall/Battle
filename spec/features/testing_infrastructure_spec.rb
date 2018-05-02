
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

feature 'Testing battle mechanics' do
  scenario 'Player 1 attacks player 2 and receives confirmation' do
    sign_in_and_play
    click_button('p1attack')
    expect(page).to have_content 'Player 1 has slapped Player 2!'
  end

  scenario 'Player 2 attacks Player 1' do
    sign_in_and_play
    click_button('p2attack')
    expect(page).to have_content 'Player 2 has slapped Player 1!'
  end

  # scenario 'When attacked, Player 2 health reduced by 2' do
  #   sign_in_and_play
  #   click_button('p1attack')
  #   expect(page).to have_content '98HP'
  # end

end
