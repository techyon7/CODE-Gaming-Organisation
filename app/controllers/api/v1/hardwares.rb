module API
  module V1
    class Hardwares < Grape::API
      include API::V1::Defaults

      resource :hardwares do
        desc "Return all hardwares"
        get "", root: :hardwares do
          Hardware.all
        end

        desc "Return a hardware"
        params do
          requires :id, type: String, desc: "ID of the hardware"
        end
        get ":id", root: "harwdare" do
          Hardware.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
