class Picture < ApplicationRecord
  validates :content, presence: true
  belongs_to :user

  def index
    
  end
end
