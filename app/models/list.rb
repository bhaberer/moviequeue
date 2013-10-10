class List < ActiveRecord::Base
  has_and_belongs_to_many :movies
  has_and_belongs_to_many :users

  validate :name, presence: true

end
