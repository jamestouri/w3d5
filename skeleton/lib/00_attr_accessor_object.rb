class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      defined_method(name) do
        instance_variable_get("@#{{name}}")
      end
      defined_method("@#{name}=") do
        in instance_variable_set("@#{name}")
      end 
  end
end
