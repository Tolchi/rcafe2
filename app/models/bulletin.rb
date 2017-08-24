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

class Bulletin < ApplicationRecord
  has_many :posts, dependent: :destroy
  as_enum :post_type, bulletin: 0, blog: 1, gallery: 2
end
