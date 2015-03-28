class User < ActiveRecord::Base
  rolify
	has_one :account
	has_many :recipients
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :build_account

  def build_account
  	Account.create(user: self)
  end

  def self.order_by_email
    order(email: :asc)
  end
end
