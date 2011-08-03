KwNautilus::Application.routes.draw do
  namespace(:institucional){
    resources :depoimentos
    resources :revendas do
      collection do
        post 'resultados'
        post 'popula_cidades'
      end
    end
    resources :representantes do
      collection do
        post 'resultados'
      end
    end
    resources :missao
    resources :sobre
    resources :revendas_representantes
    
    root :to => "sobre#index"
  }
  resources :servicos
  resources :atendimento
  resources :downloads
  resources :videos
  resources :noticias  
  resources :cases
  resources :obras
  resources :linhas
  resources :produtos
  resources :home

  root :to => "home#index"
 
end
