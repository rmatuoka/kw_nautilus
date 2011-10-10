KwNautilus::Application.routes.draw do
  
  #Inicio Namespace Admin
  namespace(:admin){
    resources(:sections){
      resources :categories
    }        
    resources(:categories){
      resources :products
    }      
    resources(:products){
      resources :product_images
    }
    resources(:events){
      resources :event_galleries
    } 
    resources(:event_galleries){
      resources :event_gallery_images
    } 
    resources :sessions
    resources(:dynamic_pages){   
      resources :headers
    }
    resources :highlights
    resources(:notices){
      resources :notice_images
    }
    resources :downloads    
    resources :users
    resources :headers
    resources :contacts
    resources :newsletters do
      collection do
        get 'export'
      end
    end
    resources(:cases){
     resources :case_images
    }
    resources :schedule_visits
    resources :partners
    resources :testimonials
    resources :videos
    resources :resellers do
      collection do
        get "import"
      end
    end
    resources :sellers
    resources(:home){
      resources :home_item
    }
    
    root :to => "home#index"
  }
  #Final Namespace Admin
  
  #Inicio Namespace Institucional
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
	resources :fasterm
    
    root :to => "sobre#index"
  }
  #Final Namespace Institucional
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
