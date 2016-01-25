Rails.application.routes.draw do
  root 'welcome#index'

  get '/blog', :to => 'blog#index', :as => "blog"

  get '/texas', :to => redirect('/UCSB_Hyperloop_Texas.pdf')

end
