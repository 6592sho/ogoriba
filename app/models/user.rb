class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :omniauthable, omniauth_providers: [:twitter]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable, :trackable

  has_one :taker
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
end
