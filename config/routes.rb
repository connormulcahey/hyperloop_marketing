Rails.application.routes.draw do
  root 'welcome#index'

  get '/blog', :to => 'blog#index', :as => "blog"

end
