require 'rspec/core'
require_relative '../lib/hello_world'
require 'simplecov'
SimpleCov.start

RSpec.describe HelloWorld do 
  describe "HelloWorld class" do 
     it "The hello method should return 'Hello, World!'" do  
        message = HelloWorld.hello 
        expect(message).to eq "Hello, World!" 
     end
  end 
end