require 'rails_helper'

RSpec.describe 'Recipe_food model Test', type: :model do
  subject do
    User.create!(name: 'Mithi', email: 'mithi@gmail.com', confirmed_at: Time.now, password: 'password')
  end

  before(:each) { subject.save }
end
