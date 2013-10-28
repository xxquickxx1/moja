Webdesignstories::Application.routes.draw do
  
  get "/pricing", to: 'pricing#home', as: :pricing

  resources :contacts

  #terms and privacy routes
  get "privacy/privacy", to: 'privacy#privacy', as: :privacy
  get "terms/terms", to: 'terms#terms', as: :terms
  #terms and privacy routes

  namespace :admin do
    match 'admin/messages/destroy', to: 'messages#destroy'
    get '/websites/', to: 'websites#home', as: :websites
    resources :websites
    resources :messages
    root :to => "base#dashboard", as: :root
    match '/inbox/destroy', to: 'quick_questions#destroy'
    get '/users/', to: 'users#home', as: :users
    get '/inbox', to: 'quick_questions#inbox', as: :inbox
    resources :quick_questions
  end

   post "quick_questions/create", to: 'quick_questions#create', as: :quick_questions

root :to => "home#index"

  get '/testimonials', to: 'testimonials#testimonial', as: :testimonial
  resources :testimonials

resources :charges
  get 'existing-website', to: 'websites#existingwebsite', as: :existingwebsite
  get 'website-process', to: 'home#websiteprocess', as: :creation

get 'inquiries/new', to: 'inquiries#new', as: :inquiry

resources :inquiries, :only => [:new, :create] do
  get 'thank_you', :on => :collection
end

 

  get '/blog', to: 'blogs#blog', as: :blog
  resources :blogs

 get '/portfolios', to: 'portfolios#portfolio', as: :portfolioindex
  resources :portfolios

 get '/sales/addtocart', to: 'sales#addtocart'
 get '/sales', to: 'sales#sales', as: :sales
  resources :sales

get '/websites/:id', to: 'websites#no_page'
get '/responsive-design', to: 'websites#responsive', as: :responsive
get '/websites', to: 'websites#new', as: :websites_path
  resources :websites
  
  
get '/about/who-we-are', :to => 'home#whoweare', as: :whoweare
get '/:id/account', :to => 'account#account'
get '/seo', :to => 'home#seo', as: :seo
get '/about', :to => 'home#whoweare', as: :about

  authenticated :user do
    root :to => 'users#dashboard'
  end
devise_for :users, :controllers => {:registrations => "registrations"} do
  get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
end

match 'users/deleteaddwebsite', to: 'users#deleteaddwebsite'
match 'users/createaddwebsite', to: 'users#createaddwebsite', as: :createaddwebsite
get 'users/add-website', to: 'users#addwebsite', as: :addwebsite
resources :usersites


match '/users/message/:id', to: 'users#deletemessage', via: :delete
get '/users/message/:id', to: 'users#showmessage', as: :message
get '/users/inbox', to: 'users#inbox', as: :inbox
get '/users/myaccount', to: 'users#dashboard', as: :dashboard
  resources :users
end