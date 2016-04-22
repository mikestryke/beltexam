class User < ActiveRecord::Base
  has_secure_password
  has_many :songs
  has_many :favorites, dependent: :destroy
  has_many :songs_favorited, through: :favorites, source: :favorites
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :password, presence: true, length: { in: 8..20}
  validates_confirmation_of :password
  validates_confirmation_of :email
end
