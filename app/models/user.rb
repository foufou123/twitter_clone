class User < ActiveRecord::Base
  has_secure_password
  validates :username, :presence => true
  validates :password, :presence => true
  has_many :tweets

  def send_instructions
    Notifier.instructions(self).deliver
  end
end

