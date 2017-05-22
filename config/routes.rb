Rails.application.routes.draw do
  get 'coaching_controller/answer'
  get 'coaching_controller/ask'

  get 'answer', to: 'coaching_controller#answer'
  get 'ask', to: 'coaching_controller#ask'
  # root to: #home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
