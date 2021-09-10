module SantanderChile
  module ApiClient
    class Client
      class Configuration
        ATTRIBUTES = %i[
          client_id
          faraday
        ].freeze
        attr_accessor(*ATTRIBUTES)

        def initialize
          self.faraday = ->(faraday) { }
        end

        def validate!
          ATTRIBUTES.each do |key|
            raise "Missing config value for `#{key}`!" if instance_variable_get("@#{key}").nil?
          end
        end
      end
    end
  end
end
