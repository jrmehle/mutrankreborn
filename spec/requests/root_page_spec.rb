require 'rails_helper'

RSpec.describe "root page", type: :request do
  let(:team_chemistry) do
    Chemistry.create(name: :minnesota)
  end
  let(:program) do
    Program.create(name: 'Snow Beasts', abbreviation: 'SB')
  end
  let!(:halfback) do
    PlayerCard.create(
      position: Position::HALFBACK,
      first_name: 'Bo',
      last_name: 'Jackson',
      overall: 96,
      team_chemistry_id: team_chemistry.id,
      program_id: program.id)
  end

  it "displays all of the positions" do
    visit "/"
    expect(page).to have_selector('ul.mutposition', count: 19)
    Position.abbreviations.each do |position_name|
      expect(page).to have_text position_name.upcase
    end

    within "#hb" do
      click_link 'Power'
    end

    expect(page).to have_selector('.card-header h2', text: 'Halfback')
    expect(page).to have_selector('td', text: 'Bo Jackson')
  end
end
