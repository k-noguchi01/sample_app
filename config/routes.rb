Rails.application.routes.draw do
  root "static_pages#home"
  # homeアクションへの振り分け
  get 'static_pages/home'
  # helpアクションへの振り分け
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
end
