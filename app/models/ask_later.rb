# def repeat_song_by_artist
#   if title.present? && artist_name.present? && release_date == Date.today.year
#     errors.add(:title, "Cannot repeat a title by the same artist in the same year")
#   end
# end
#
# def release_date_cannot_be_in_the_future
#   if release_date.present? && expiration_date > Date.today.year
#     errors.add(:release_date, "Date can not be in the future")
#   end
# end
#
# def release_date
#   if released == true && release_date == nil
#     errors.add(:release_date, "Date must be added if song has been released.")
#   end
# end
# end
