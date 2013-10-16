require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the correct title" do
      get 'home'
      page_title(response).should eq('Ruby on Rails Tutorial Sample App | Home')
    end
    
    it "should have a non-empty body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
      page_title(response).should eq('Ruby on Rails Tutorial Sample App | Contact')
    end
    
    it "should have the correct title" do
      get 'contact'
      page_title(response).should eq('Ruby on Rails Tutorial Sample App | Contact')      
    end
  end
  
  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
      page_title(response).should eq('Ruby on Rails Tutorial Sample App | About')
    end

    it "should have the correct title" do
      get 'about'
      page_title(response).should eq('Ruby on Rails Tutorial Sample App | About')      
    end
  end

end
