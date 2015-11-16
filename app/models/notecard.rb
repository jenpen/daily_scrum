class Notecard < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
end
