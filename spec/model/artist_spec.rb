require 'rails_helper'

describe Artist, type: :model do
  describe "valdations" do
    it {should validate_presence_of(:name)}
  end
end
