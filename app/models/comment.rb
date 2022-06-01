class Comment < ApplicationRecord
  belongs_to :blog

  # エラー原因: nameが入力できていなくてもcreateできていた
  # nameにもバリデートを追加
  validates :name, presence: true
  validates :content, presence: true
end
