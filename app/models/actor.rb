class Actor < ApplicationRecord
  # Direct associations

  has_many   :characters,
             :dependent => :destroy

  # Indirect associations

  has_many   :movies,
             :through => :characters,
             :source => :movie

  # Validations

  validates :name, :uniqueness => { :scope => [:dob] }

  validates :name, :presence => true

end
