class Movie < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :year, :numericality => { :less_than_or_equal_to => 2050, :greater_than_or_equal_to => 1870 }

end
