require 'rails_helper'

RSpec.describe "player show page", type: :request do
  let(:team_chemistry) do
    Chemistry.create(name: :minnesota)
  end
  let(:program) do
    Program.create(name: 'Snow Beasts')
  end
  let!(:card) do
    PlayerCard.create(
      position: Object.const_get("#{ Mutreborn::Application::DEFAULT_GAME_VERSION.camelize }::Position::HALFBACK"),
      first_name: 'Bo',
      last_name: 'Jackson',
      overall: 96,
      team_chemistry_id: team_chemistry.id,
      program_id: program.id)
  end

  before { visit '/players/' + card.id }

  it "displays the player card" do
    expect(page).to have_selector('.mut-card')

    within '.mut-card' do
      expect(page).to have_selector('h2.name', text: 'Bo Jackson')
      expect(page).to have_selector('.team-chemistry', text: 'MIN')
    end
  end

  it "displays the rankings" do
    expect(page).to have_selector('.stat-group.ranks', text: 'Ranks')
  end

  it 'displays the general player stats' do
    expect(page).to have_selector('.stat-group.generic-stats', text: 'General')
  end

  it 'displays the offensive player stats' do
    expect(page).to have_selector('.stat-group.offensive-stats', text: 'Offense')
  end

  it 'displays the defensive player stats' do
    expect(page).to have_selector('.stat-group.defensive-stats', text: 'Defense')
  end

  it 'displays the special teams player stats' do
    expect(page).to have_selector('.stat-group.special-teams-stats', text: 'Special Teams')
  end

  it 'displays the player traits' do
    expect(page).to have_selector('.stat-group.traits', text: 'Traits')
  end
end
