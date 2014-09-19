require File.expand_path('../../../spec_helper', __FILE__)
require File.expand_path('../fixtures/classes', __FILE__)

describe "Binding#receiver" do
  ruby_version_is "2.2" do
    it "returns the receiver in the scope of the binding" do
      obj = BindingSpecs::Demo.new(1)
      obj.get_binding.receiver.should equal obj
    end
  end
end
