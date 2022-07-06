require_relative 'song'

class Playlist

  attr_reader :songs

  def initialize(filename=nil)
    @songs = []

    if filename
      # Your job is to fill this in. If a filename is provided, 
      # the @songs attribute should automatically populate with the
      # data provided in the file.
    end
  end

  def add_song(title, artist, album_name, genre)
    # Your job is to fill this in.
  end

  def save_to_file(filename)
    # Your job is to fill this in.
  end

  def delete_song(song_title)
    # Your job is to fill this in.
  end

  def group_by_genre
    # Your job is to fill this in.
  end

end
