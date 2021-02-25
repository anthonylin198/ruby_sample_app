class User < ApplicationRecord
  has_many :microposts, dependent: destroy
  default_scope -> { order(created_at: :desc) }
  before_save :downcase_email
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  private
    def downcase_email
      self.email = email.downcase
    end
end
