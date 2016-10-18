require 'active_record'

module RailsEventStoreActiveRecord
  class Event < ::ActiveRecord::Base
    self.primary_key = :id
    self.table_name = 'event_store_events'
    serialize :metadata
    serialize :data

    def event_type=(klass)
      write_attribute(:event_type, klass.to_s)
    end
  end
end
