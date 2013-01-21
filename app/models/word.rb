# == Schema Information
#
# Table name: words
#
#  id         :integer          not null, primary key
#  english    :string(255)
#  spanish    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Word < ActiveRecord::Base
  attr_accessible :english, :spanish, :category_ids
  has_and_belongs_to_many :categories
end
