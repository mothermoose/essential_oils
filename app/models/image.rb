class Image < ApplicationRecord
  belongs_to :oil 

  # validates :url, presence :true
end
