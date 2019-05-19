module API
  module V1
    class Hardwares < Grape::API
      include API::V1::Defaults

      resource :hardwares do
        desc "Return all hardwares"
        get "", root: :hardwares do
          #authenticate!
          Hardware.all.order(:id)
        end

        desc "Return a hardware"
        params do
          requires :id, type: String, desc: "ID of the hardware"
        end
        get "find", root: "harwdare" do
          Hardware.where(id: permitted_params[:id]).first!
        end

        desc "Create a hardware"
        params do
          requires :name, type: String
          requires :description, type: String
          requires :purpose, type: String
          requires :price, type: Float
        end
        post "new", root: "hardware" do
          Hardware.create!({
            name: params[:name],
            description: params[:description],
            purpose: params[:purpose],
            price: params[:price]
          })
        end

        desc "Update a hardware"
        params do
          requires :id, type: String
          requires :name, type: String
          requires :description, type: String
          requires :purpose, type: String
          requires :price, type: Float
        end
        post "update", root: "hardware" do
          Hardware.where(id: permitted_params[:id]).update({
            name: params[:name],
            description: params[:description],
            purpose: params[:purpose],
            price: params[:price]
          })
        end
      end
    end
  end
end
