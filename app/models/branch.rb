# == Schema Information
#
# Table name: branches
#
#  id         :integer          not null, primary key
#  name       :text
#  functions  :text
#  powers     :text
#  history    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Branch < ActiveRecord::Base
end
