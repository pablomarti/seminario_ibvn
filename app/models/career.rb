class Career < ActiveRecord::Base
  has_many :career_courses
  has_many :courses, :through => :career_courses
end
