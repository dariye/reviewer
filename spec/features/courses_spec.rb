require 'spec_helper'

describe "Courses" do
  subject { page }
  describe "Courses" do
    before do
      course = Course.create(name: 'Organizational Behavior', about: 'Understanding the innerworkings of organizations')
      visit courses_path
    end

  end
end
