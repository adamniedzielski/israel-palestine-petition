Rails.application.routes.draw do
  get '/' => 'home#locale_redirect', as: :root

  scope '/:locale' do
    get '/' => 'home#index', as: :home
    get '/faq' => 'home#faq', as: :faq
    get '/about-us' => 'home#about_us', as: :about_us

    get '/countries/:country_code/signatures' => 'countries#signatures', as: :country_signatures

    resources :signatures, only: [:index, :new, :create] do
      get 'thank-you', on: :collection
      get ':token/confirm', on: :collection,  action: :confirm, as: :confirm
    end
  end
end
