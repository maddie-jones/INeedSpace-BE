require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:url)}
  it {should validate_presence_of(:hdurl)}
  it {should validate_presence_of(:explanation)}
end
