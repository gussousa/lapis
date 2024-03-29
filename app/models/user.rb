class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :texts
  has_many :themes

  validates :name, :email, :password, :cpf, presence: true
  validates :email, :cpf, uniqueness: true
  has_one_attached :photo
end
