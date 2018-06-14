require 'rails_helper'

RSpec.describe "root page", type: :request do
  let(:team_chemistry) do
    Chemistry.create(name: Team.city_and_team_name(team_city_or_team_name: :minnesota))
  end
  let!(:halfback) do
    PlayerCard.create(
      position: Position::HALFBACK,
      first_name: 'Bo',
      last_name: 'Jackson',
      overall: 96,
      team_chemistry_id: team_chemistry.id)
  end

  it "displays all of the positions" do
    visit "/"
    expect(page).to have_selector('ul.mutposition', count: 19)
    Position.names.each do |position_name|
      expect(page).to have_text position_name
    end

    within "#hb" do
      click_link 'Power'
    end

    expect(page).to have_selector('.card-header h2', text: 'Halfback')
    expect(page).to have_selector('td', text: 'Bo Jackson')
  end
end
