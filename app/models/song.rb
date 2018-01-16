


class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :release_year, presence: true, unless: :not_released?
  validates :release_year, numericality: { less_than_or_equal_to: Date.current.year, allow_nil: true }
  validates :title, uniqueness: { scope: :release_year,
    message: "title may only be released once per year" }

  def not_released?
    !self.released
  end
end
