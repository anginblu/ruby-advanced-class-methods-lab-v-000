
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
    new = []
    self.all.each do |value|
      if value.name == name
        new << value
      end
    end
    new.each do |value|
      puts value
    end
  end

end
