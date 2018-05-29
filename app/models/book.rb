class Book < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user, dependent: :nullify
  mount_uploader :image, ImageUploader
  
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Book.where(['book_name LIKE ?', "%#{search}%"])
    else
      Book.all #全て表示。
    end
  end
end
