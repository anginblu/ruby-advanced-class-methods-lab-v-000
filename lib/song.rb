
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize
    self.save
  end

  def self.create
    song = self.new
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.find_by_name(name)
    self.all.bsearch {|value| value.name == name}
  end

  def self.find_or_create_by_name(name)
    self.create_by_name(name)
    self.find_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by {|i| i.name}
  end

  def self.new_from_filename(filename)
    new = filename.split(".mp3")
    new2 = new[0].split(" - ")
    filename_name = new[1]
    filename_artist_name
  end

end
