class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, comment: '글 제목'
      t.text :context, comment: '글 내용'

      t.timestamps
    end
  end
end
