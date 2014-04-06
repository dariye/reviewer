require 'spec_helper'

describe "Courses" do
  describe "GET /courses" do
    context "when I visit homepage" do
      before do
        visit courses_path
        subject { page }
      end
      it "should show list of courses" do
      end
    end
  end
end

