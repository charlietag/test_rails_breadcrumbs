Rails.application.routes.draw do

  # --- pagy fancy routes ---
  # Ref. https://ddnexus.github.io/pagy/how-to.html#customizing-the-url

  # --- friendly URL for SEO ---
  # Ref. https://github.com/kaminari/kaminari#creating-friendly-urls-and-caching
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :configs
  #resources :books
  resources :books, concerns: :paginatable
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
