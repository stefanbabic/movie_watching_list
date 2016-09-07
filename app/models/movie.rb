class Movie < ApplicationRecord

  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 10.days.ago) }
  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }

  before_save :set_keywords

  def finished?
    finished_on.present?
  end

  protected

  def set_keywords
    self.keywords = [title, year, description].map(&:to_s).map(&:downcase).join(' ')
  end

end
