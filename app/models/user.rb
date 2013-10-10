class User < ActiveRecord::Base
  has_and_belongs_to_many :movies
  has_and_belongs_to_many :lists

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def watched?(movie)
    return true if self.movies.include?(movie)
    return false
  end
end
