class Song < ActiveRecord::Base
  belongs_to :user
  belongs_to :favorite
  has_many :favorites, dependent: :destroy
  has_many :users_favorited, through: :favorites, source: :user
  validates :artist, presence: true, length: { in: 2..100}
  validates :title, presence: true, length: { in: 2..100}
end
