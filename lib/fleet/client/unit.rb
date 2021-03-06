module Fleet
  class Client
    module Unit
      UNITS_RESOURCE = 'units'.freeze

      def list_units
        get(units_path)
      end

      def get_unit(name)
        get(units_path(name))
      end

      alias_method :get_unit_file, :get_unit

      def create_unit(name, unit)
        put(units_path(name), unit)
      end

      alias_method :update_unit, :create_unit

      def delete_unit(name)
        delete(units_path(name))
      end

      private

      def units_path(*parts)
        resource_path(UNITS_RESOURCE, *parts)
      end
    end
  end
end
