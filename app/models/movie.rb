class Movie < ApplicationRecord

  def finished?
    finished_on.present?
  end

end
