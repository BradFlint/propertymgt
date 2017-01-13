                      Prefix Verb   URI Pattern                          Controller#Action
        new_landlord_session GET    /landlords/sign_in(.:format)         landlords/sessions#new
            landlord_session POST   /landlords/sign_in(.:format)         landlords/sessions#create
    destroy_landlord_session DELETE /landlords/sign_out(.:format)        landlords/sessions#destroy
       new_landlord_password GET    /landlords/password/new(.:format)    devise/passwords#new
      edit_landlord_password GET    /landlords/password/edit(.:format)   devise/passwords#edit
           landlord_password PATCH  /landlords/password(.:format)        devise/passwords#update
                             PUT    /landlords/password(.:format)        devise/passwords#update
                             POST   /landlords/password(.:format)        devise/passwords#create
cancel_landlord_registration GET    /landlords/cancel(.:format)          landlords/registrations#cancel
   new_landlord_registration GET    /landlords/sign_up(.:format)         landlords/registrations#new
  edit_landlord_registration GET    /landlords/edit(.:format)            landlords/registrations#edit
       landlord_registration PATCH  /landlords(.:format)                 landlords/registrations#update
                             PUT    /landlords(.:format)                 landlords/registrations#update
                             DELETE /landlords(.:format)                 landlords/registrations#destroy
                             POST   /landlords(.:format)                 landlords/registrations#create
            properties_apply GET    /properties/apply(.:format)          properties#apply
           landlords_contact GET    /landlords/contact(.:format)         landlords#contact
             sessions_create POST   /tennants/sign_in(.:format)          sessions#create
                    sessions GET    /sessions/sign_in(.:format)          sessions#new
                    sign_out DELETE /sessions/sign_out(.:format)         sessions#destroy
        tennants_maintanence GET    /tennants/maintanence(.:format)      tennants#maintanence
                tennants_pay GET    /tennants/pay(.:format)              tennants#pay
                             POST   /properties/apply(.:format)          properties#apply
                             POST   /tennants/maintanence(.:format)      tennants#maintanence
              properties_all GET    /properties/all(.:format)            properties#all
       properties_liststatus GET    /properties/:id/liststatus(.:format) properties#liststatus
                    tennants GET    /tennants(.:format)                  tennants#index
                             POST   /tennants(.:format)                  tennants#create
                 new_tennant GET    /tennants/new(.:format)              tennants#new
                edit_tennant GET    /tennants/:id/edit(.:format)         tennants#edit
                     tennant GET    /tennants/:id(.:format)              tennants#show
                             PATCH  /tennants/:id(.:format)              tennants#update
                             PUT    /tennants/:id(.:format)              tennants#update
                             DELETE /tennants/:id(.:format)              tennants#destroy
                  properties GET    /properties(.:format)                properties#index
                             POST   /properties(.:format)                properties#create
                new_property GET    /properties/new(.:format)            properties#new
               edit_property GET    /properties/:id/edit(.:format)       properties#edit
                    property GET    /properties/:id(.:format)            properties#show
                             PATCH  /properties/:id(.:format)            properties#update
                             PUT    /properties/:id(.:format)            properties#update
                             DELETE /properties/:id(.:format)            properties#destroy
                        root GET    /                                    home#index
