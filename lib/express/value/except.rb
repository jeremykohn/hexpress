class Express
  # def except(value)
  #   add(Except, value)
  # end
  # alias_method :excluding, :except
  # alias_method :exclude, :except
  # alias_method :without, :except

  module Value
    class Except
      include Value

      def initialize(value)
        @value = value
      end

      def to_s
        "^#{value}"
      end
    end
  end
end
