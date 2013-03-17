module Shy
  def self.new(*attribute_names)
    Class.new do
      def initialize(attributes={})
        attributes.each do |name, value|
          send("#{name}=", value)
        end
      end

      attribute_names.each do |attribute_name|
        attr_accessor attribute_name
        private attribute_name, "#{attribute_name}="
      end
    end
  end
end
