require 'minitest/autorun'
require_relative 'playlist'

class HashAsIndexTest < Minitest::Test
  def test_add_song
    list = Playlist.new
    list.add_song("Symphony No. 5", "Beeethoven", "Great Beethoven Classics", "Classical")
    assert_equal "Symphony No. 5", list.songs[0].title
  end

  def test_delete_song
    skip
    list = Playlist.new
    list.add_song("Symphony No. 5", "Beeethoven", "Great Beethoven Classics", "Classical")
    list.add_song("The Blue Danube", "Strauss", "100 Best Classical Hits", "Classical")
    list.delete_song("Symphony No. 5")
    assert_equal "The Blue Danube", list.songs[0].title
  end

  def test_group_by_genre
    skip
    list = Playlist.new
    list.add_song("Symphony No. 5", "Beeethoven", "Great Beethoven Classics", "Classical")
    list.add_song("The Star-Spangled Banner", "Francis Scott Key","Great Baseball Tunes", "American")
    list.add_song("The Blue Danube", "Strauss", "100 Best Classical Hits", "Classical")
    list.add_song("Yankee Doodle Went to Town", "Unknown", "Oldies But Goodies Vol. IX", "American")
    assert_equal "American", list.group_by_genre[0].genre
    assert_equal "American", list.group_by_genre[1].genre
    assert_equal "Classical", list.group_by_genre[2].genre
    assert_equal "Classical", list.group_by_genre[3].genre
  end

end