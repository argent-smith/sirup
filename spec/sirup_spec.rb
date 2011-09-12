require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Sirup, "the SIP implementation container" do
  it "contains SIP submodule" do
    Sirup::SIP.should be_instance_of Module
  end
  describe SIP, "the implementation library" do
    it "contains Client class" do
      Sirup::SIP::Client.should be_instance_of Class
    end
    it "contains ServerData class" do
      Sirup::SIP::ServerData.should be_instance_of Class
    end
    it "contains Message class" do
      Sirup::SIP::Message.should be_instance_of Class
    end
    it "contains Response class" do
      Sirup::SIP::Response.should be_instance_of Class
    end
  end
end
