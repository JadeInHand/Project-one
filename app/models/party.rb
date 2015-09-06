# == Schema Information
#
# Table name: parties
#
#  id         :integer          not null, primary key
#  name       :text
#  ideology   :text
#  seats      :integer
#  members    :integer
#  history    :text
#  emblem     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Party < ActiveRecord::Base
	has_many :politicians
	belongs_to :party
end
