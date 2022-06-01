Rails.application.routes.draw do
  # エラー原因：resources :blog doのblogが単数形になっていたので
  # 修正の意図：noruteerrorを解除する為
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
