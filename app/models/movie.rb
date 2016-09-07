class Movie < ApplicationRecord

  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 10.days.ago) }
  scope :search, ->(keyword){ where(title: keyword) if keyword.present? }

  def finished?
    finished_on.present?
  end

end
