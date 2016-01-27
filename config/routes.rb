Rails.application.routes.draw do
  root 'welcome#index'

  get '/blog', :to => 'blog#index', :as => "blog"

  get '/dw', :to => redirect('/ucsbhyperloop_designweekend.pdf')

end
