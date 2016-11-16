class Actor < ApplicationRecord
  # Direct associations

  has_many   :characters,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:dob] }

  validates :name, :presence => true

end
