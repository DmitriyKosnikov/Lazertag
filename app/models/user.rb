class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :teams
  has_many :games, through: :teams

  def winrate
    games_count.positive? ? wins_count.to_f / games.count.to_f * 100.round(2) : 0
  end
end
