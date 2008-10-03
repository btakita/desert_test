require File.expand_path("#{File.dirname(__FILE__)}/../../spec_helper")

module ActionController
module Layout
module ClassMethods
  describe ".layout_list" do
    it "does not attempt to add plugin layouts when there are no defined plugins" do
      Spiffy::SpiffyController.layout_list.should == []
    end
  end
end
end
end
