require 'rails_helper'

describe "user can create a new song" do
  it "fills out a form and clicks create song" do
    artist = Artist.create!(name: "wild cherry")

    song_title = "Play that funky music"
    song_length = 267
    song_play_count = 340000

    visit new_artist_song_path(artist)

    fill_in :song_title, with: song_title
    fill_in :song_length, with: song_length
    fill_in :song_play_count, with: song_play_count

    click_on "Create Song"

    expect(page).to have_content(song_title)

    expect(page).to have_content(song_title)
  end
end
