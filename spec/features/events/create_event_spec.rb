require 'rails_helper'

feature 'Event' do
  before do
    create :user
  end

  scenario 'visit the events index' do
    visit '/'
    click_link 'Events'
    expect(page).to have_content 'Listing events'
  end
  scenario 'view content new event' do
    visit '/'
    click_link 'Events'
    click_on 'New Events'
    expect(page).to have_content 'New event'
  end
  scenario 'create new event' do
    visit '/events/new'

    within '#new_event' do
      fill_in 'event[place]', with: 'CDU univalle'
      fill_in 'event[time]', with: '2:00 PM'
      fill_in 'event[date]', with: '15 March 2015'
      fill_in 'event[sport]', with: 'Basketball'
    end

    click_on 'Create Event'
    expect(page).to have_content 'Event was successfully created.'
  end
end
