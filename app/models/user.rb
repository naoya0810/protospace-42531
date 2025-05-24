class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :profile, presence: true, length: { maximum: 200 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
  validates :occupation, presence: true, length: { maximum: 50 }
  validates :position, presence: true, length: { maximum: 50 }
  
  has_many :prototypes
  has_many :comments, dependent: :destroy
end
