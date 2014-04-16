require 'spec_helper'

 describe User do
   before do
   @user = User.create
 end

 it "sends an email" do
   @user.send_instructions
  ActionMailer::Base.deliveries.last.to.should == [@user.username]
 end
end
