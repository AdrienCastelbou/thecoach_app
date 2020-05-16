class Coach < ApplicationRecord

  #validates :username, presence: true
  validates :email, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :city, optional: true
  has_many :coach_spheres
  has_many :spheres, through: :coach_spheres
  has_many :programs
  has_one_attached :avatar
end
