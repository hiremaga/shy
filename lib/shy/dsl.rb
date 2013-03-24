module Shy
  module DSL
    def shy(*attribute_names)
      attribute_names.each do |attribute_name|
        attr_accessor attribute_name
        private attribute_name, "#{attribute_name}="
      end
    end
  end
end
