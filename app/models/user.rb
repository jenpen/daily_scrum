class User < ActiveRecord::Base
  # models look good for the most part. Would love to see some validations, but associations look solid based on schema.

  # i told you this was hacky! I encourage you try adding custom attributes to the devise user model. Check out the devise docs for more info on how to do that.
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
