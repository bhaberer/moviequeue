class Movie < ActiveRecord::Base
  has_and_belongs_to_many :lists
  has_and_belongs_to_many :users

  validate :imdb_id,    uniqueness: true,
                        presence: true

  validate :year,       presence: true
  validate :title,      presence: true

  def imdb_url
    "http://www.imdb.com/title/tt#{self.imdb_id}/"
  end
  
end
