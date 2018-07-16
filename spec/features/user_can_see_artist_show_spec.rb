require "rails_helper"

describe "a user visits artist show path" do
  it "can see the artist and their songs" do
    artist = Artist.create(name: "Adele")
    song_1 = artist.songs.create!(title: "Don't Stop Believin", length: 303, play_count: 123456)
    song_2 = artist.songs.create!(title: "Never Gonna Give You UP", length: 253, play_count: 98762452)

    visit artist_path(artist)

    expect(page).to have_content(artist.name)
    expect(page).to have_content(song_1.title)
    expect(page).to have_content(song_2.title)
  end
end
