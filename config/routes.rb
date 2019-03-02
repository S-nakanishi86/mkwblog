Rails.application.routes.draw do
  # ルート「/」へのGETリクエストがStaticPagesコントローラのhomeアクションにルーティングされる
  root 'static_pages#home' # これはroot_url(Railsヘルパーの効果)
  get 'static_pages/home' # これはstatic_pages_home_url
  get 'static_pages/help'
  get '/help', to: 'static_pages#help'
  get 'static_pages/about'

  # MKW HOME
  get 'static_pages/mkw'
  get '/mkw', to: 'static_pages#mkw'

  # コンテンツごとの記事一覧ページ

  # 記事ページ
  get '/item/info', to: 'static_pages#item_info'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
