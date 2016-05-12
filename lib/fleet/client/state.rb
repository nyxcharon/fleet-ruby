module Fleet
  class Client
    module State
      STATE_RESOURCE = 'state'.freeze

      def list_states
        opts = { consistent: true, recursive: true, sorted: true }
        get(state_path, opts)
      end

      private

      def state_path(*parts)
        resource_path(STATE_RESOURCE, *parts)
      end
    end
  end
end
