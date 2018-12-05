require "/home/dan/RUMOR/app/controllers/pages_controller.rb"

require "/home/dan/RUMOR/spec/rails_helper.rb"
require 'spec_helper'

describe "Link Darcy Ribeiro em pages/cardapio/" do
  it {
    #should have_link('Darcy Ribeiro', href: "pages/darcy")
    #link = page.find(:css, 'a[href="pages/darcy"]')
    should assert_selector(:css, 'a[href="actual link"]')
  }
end

describe PagesController do

  #it "should have proper routes" do
    # {:get => "pages/darcy" }.should be_routable
    # page.should have_tag("a[href$=pages/darcy]", :text => "Darcy Ribeiro")
  #end

end
