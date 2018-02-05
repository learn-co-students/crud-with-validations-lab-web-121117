class Song < ActiveRecord::Base

  validates :title, presence: true
  validates :title, uniqueness: { scope: :release_year}
  validates :title, uniqueness: { scope: :artist_name}
  validates :released, inclusion: { in: [true, false]}

  def released?
    released
  end

  with_options if: :released? do |realised|
    realised.validates :release_year, presence: true
    realised.validates :release_year, numericality: { less_than_or_equal_to: Date.today.year  }
  end

end
