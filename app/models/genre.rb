class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    return self.songs.size
  end

  def artist_count
    return self.artists.size
  end

  def all_artist_names
    return self.artists.name
  end
end
