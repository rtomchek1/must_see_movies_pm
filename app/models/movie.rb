class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  # Indirect associations

  # Validations

  validates :description, :numericality => { :less_than_or_equal_to => 2764800, :greater_than_or_equal_to => 0 }

  validates :director_id, :presence => true

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

  validates :year, :numericality => { :less_than_or_equal_to => 2050, :greater_than_or_equal_to => 1870 }

end
