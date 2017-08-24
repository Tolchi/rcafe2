# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  context     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  bulletin_id :integer
#  picture     :string
#

require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
