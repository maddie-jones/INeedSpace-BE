require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:url)}
  it {should validate_presence_of(:hdurl)}
  it {should validate_presence_of(:explanation)}
  it {should validate_presence_of(:media_type)}
  
  it 'should create a new resource' do
    Favorite.create(title: 'galaxy',
    url: 'star.image.com',
    hdurl: 'hdstar.image.com',
    explanation: 'a picture of the galaxy',
    media_type: 'image')

    favorite_1 = Favorite.last

    expect(favorite_1.title).to eq('galaxy')
  end
end
