class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :diaries

  after_create :create_diary

  def forem_admin
    admin
  end
  alias :forem_admin? :forem_admin

  def to_s
    email
  end

  def diary
    diaries.where(failed: false).first
  end

  def create_diary
    diaries.create
  end
end
