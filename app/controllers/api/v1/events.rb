module API
  module V1
    class Events < Grape::API
      include API::V1::Defaults

      resource :events do
        desc "Return all events"
        get "", root: :events do
          #authenticate!
          Event.all.order(:id)
        end

        desc "Return a event"
        params do
          requires :id, type: String, desc: "ID of the event"
        end
        get "find", root: "event" do
          Event.where(id: permitted_params[:id]).first!
        end

        desc "Create a event"
        params do
          requires :name, type: String
          requires :description, type: String
          requires :date, type: Date
        end
        post "new", root: "event" do
          Event.create!({
            name: params[:name],
            description: params[:description],
            date: params[:date],
          })
        end

        desc "Update a event"
        params do
          requires :id, type: String
          requires :name, type: String
          requires :description, type: String
          requires :date, type: Date
        end
        post "update", root: "event" do
          Event.where(id: permitted_params[:id]).update({
            name: params[:name],
            description: params[:description],
            date: params[:date],
          })
        end
      end
    end
  end
end
