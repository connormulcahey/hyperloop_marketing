Rails.application.routes.draw do
  root 'welcome#index'

  get '/blog', :to => 'posts#index', :as => "blog"

  get '/dw', :to => redirect('/ucsbhyperloop_designweekend.pdf')

  get '/sw', :to => redirect('/assets/software_design.svg')

  resources "posts"

end
