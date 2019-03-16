Rails.application.routes.draw do
  # ルート「/」へのGETリクエストがStaticPagesコントローラのhomeアクションにルーティングされる
  # root 'static_pages#home' # これはroot_url(Railsヘルパーの効果)
  # get 'static_pages/home' # これはstatic_pages_home_url
  # get 'static_pages/help'
  # get '/help', to: 'static_pages#help'
  # get 'static_pages/about'

  # MKW HOME
  get 'static_pages/mkw'
  get '/mkw', to: 'static_pages#mkw'

  # コンテンツごとの記事一覧ページ

  # 記事ページ
  get '/item/info', to: 'static_pages#item_info'
  get '/column', to: 'static_pages#column'

  get '/vs/item-dodge', to: 'static_pages#item_dodge'
  get '/vs/lag', to: 'static_pages#lag'
  get '/vs/willy', to: 'static_pages#willy'
  get '/vs/ss', to: 'static_pages#ss'
  get '/vs/aggressive', to: 'static_pages#aggressive'
  get '/vs/middle', to: 'static_pages#middle'
  get '/vs/shock-dodge', to: 'static_pages#shock_dodge'
  get '/vs/sniping', to: 'static_pages#sniping'
  get '/vs/opening', to: 'static_pages#opening'
  get '/vs/unlucky', to: 'static_pages#unlucky'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
