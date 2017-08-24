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

class Post < ApplicationRecord
  belongs_to :bulletin
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy
end
