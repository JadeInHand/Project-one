# == Schema Information
#
# Table name: politicians
#
#  id             :integer          not null, primary key
#  name           :text
#  role           :text
#  previous_works :text
#  image          :text
#  location       :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Politician < ActiveRecord::Base
end