module Fleet
  class Client
    module Machines
      MACHINES_RESOURCE = 'machines'.freeze

      def list_machines
        opts = { consistent: true, recursive: true, sorted: true }
        get(machines_path, opts)
      end

      private

      def machines_path(*parts)
        resource_path(MACHINES_RESOURCE, *parts)
      end
    end
  end
end
