class Report < ActiveRecord::Base
    belongs_to :User

    after_initialize :set_defaults

    def set_defaults
        # self.username ||= ''
    end
end
