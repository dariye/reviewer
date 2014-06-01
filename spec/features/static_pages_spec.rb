require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
    before { visit root_path }

    it { should have_content("NYU Course Reviewer") }
    it { should have_title(page.title) }
    it { should have_content("Sign in") }

    it { should have_selector('.search') }

    describe  "show course list" do
      it { should have_selector('li') }
    end



  end
end
