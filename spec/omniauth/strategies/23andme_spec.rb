require 'spec_helper'

describe OmniAuth::Strategies::TwentyThreeAndMe do
  let(:access_token) { double('AccessToken', :options => {}) }
  let(:parsed_response) { double('ParsedResponse') }
  let(:response) { double('Response', :parsed => parsed_response) }


  subject do
    OmniAuth::Strategies::TwentyThreeAndMe.new({})
  end

  before(:each) do
    subject.stub(:full_host).and_return('http://mysite.com')
    subject.stub(:script_name).and_return('')
    subject.stub(:access_token).and_return(access_token)
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://api.23andme.com")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://api.23andme.com/authorize')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://api.23andme.com/token')
    end

  end

  context "#callback_url" do
    it 'should redirect' do
      subject.callback_url.should eq('http://mysite.com/auth/twenty_three_and_me/callback')
    end
  end

  context "#raw_info" do
    it "should call to '/1/user'" do
      access_token.should_receive(:get).with('/1/user').and_return(response)
      subject.raw_info.should eq(parsed_response)
    end
  end

end
