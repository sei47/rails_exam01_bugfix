class Blog < ApplicationRecord
  # エラー原因: has_many :commentが単数形になっていた
  # 修正の意図: 参照する際に外部キー名でerrorが出ていたため修正
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
