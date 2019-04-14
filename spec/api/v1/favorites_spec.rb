require 'rails_helper'

describe 'Favorites API' do
  it 'should add a Favorite image' do
    params = {
      title: 'galaxy',
      url: 'star.image.com',
      hdurl: 'hdstar.image.com',
      explanation: 'a picture of the galaxy'
    }
    post '/api/v1/favorites', params: params

    favorite_json = JSON.parse(response.body)
    expect(response).to have_http_status(:created)

    expect(favorite_json["data"]["attributes"]["title"]).to eq("galaxy")
  end
end
