class User < ActiveRecord::Base
  def username
    self.email.split('@')[0].capitalize
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :notecards
  has_many :comments
  has_many :boards, through: :notecards
end
