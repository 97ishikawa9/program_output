class Program < ApplicationRecord

  has_many :program_tags
  has_many :tags, through: :program_tag

end
