class UserEvent < ApplicationRecord
    belongs_to: :user
    belongs_to: :event

    def event_name
        self.event.:name
    end
end
