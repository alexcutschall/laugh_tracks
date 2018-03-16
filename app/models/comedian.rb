class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    sum(:comedians.age) / :comedians.length
  end
end
