
feature 'Testing infrastructure' do
    scenario 'Larry enters his wicked ass name' do
    visit('/')
    fill_in 'name', with: 'Larry'
    click_button('Submit')
    expect(page).to have_content 'Larry'
  end

end
