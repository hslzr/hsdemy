class User < ActiveRecord::Base
  enum role: [ :student, :teacher ]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :courses, class_name: 'Course', foreign_key: 'teacher_id'
  has_many :enrollments
end
