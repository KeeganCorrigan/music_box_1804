require 'rails_helper'

describe "nav system" do
  it 'tests link to new artist' do
    visit artists_path

    click_link 'Add new artist'

    expect(current_path).to eq(new_artist_path)
  end
end
