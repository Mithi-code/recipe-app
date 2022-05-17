class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :food
  has_many :recipe

  # authorization Roles
  Roles = %i[admin default].freeze

  def is?(requested_role)
    role == requested_role.to_s
  end
end
