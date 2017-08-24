# == Schema Information
#
# Table name: bulletins
#
#  id           :integer          not null, primary key
#  title        :string
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  post_type    :string
#  post_type_cd :integer          default(0)
#

require 'rails_helper'

RSpec.describe Bulletin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
