class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :diaries

  def forem_admin
    admin
  end
  alias :forem_admin? :forem_admin
end
