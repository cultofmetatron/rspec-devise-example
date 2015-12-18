require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "tasks" do
    it "has content" do
      puts '########'
      expect(FactoryGirl.build(:task)['content']).to match(/number/)
    end
  end
end
