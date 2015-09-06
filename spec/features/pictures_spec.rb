require 'rails_helper'

feature 'pictures' do
  context 'no pictures have been added' do
    scenario 'should display a prompt to add a picture' do
      visit '/pictures'
      expect(page).to have_content 'No pictures yet!'
      expect(page).to have_link 'Add a picture'
    end
  end

  context 'pictures added' do
    before do
      Picture.create(name: 'Myself')
    end

    scenario 'display pictures' do
      visit '/pictures'
      expect(page).to have_content('Myself')
      expect(page).not_to have_content('No pictures yet!')
    end
  end
end