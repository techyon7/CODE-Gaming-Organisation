module API
    module V1
      class Users < Grape::API
        include API::V1::Defaults
  
        resource :users do
          desc "Return all users"
          get "", root: :users do
            User.all
          end
        end
      end
    end
end