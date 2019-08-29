class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, presence: true, numericality: {less_than_or_equal_to: Time.now.year}, if: :released?
  validates :artist_name, presence: true
  validate :no_repeat_titles_this_year

  #validation methods
  def no_repeat_titles_this_year
    if Song.all.find{|song| song.id != id && song.title == title && song.release_year == release_year}
      errors.add(:title, "A song with this title was already released this year.")
    end
  end

  def released?
    released ? true : false
  end

end
