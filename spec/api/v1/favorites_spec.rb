require 'rails_helper'

describe 'Favorites API' do
  it 'should return all favorites' do
    favorite_1 = Favorite.create(title: "star_1", url: "star_img_1.com", hdurl: "star_img_hd_1", explanation: "good photo of star 1", media_type: "image")
    favorite_2 = Favorite.create(title: "star_2", url: "star_img_2.com", hdurl: "star_img_hd_2", explanation: "good photo of star 2", media_type: "video")

    get '/api/v1/favorites'

    favorites_json = JSON.parse(response.body)
    expect(response).to be_successful
    expect(favorites_json["data"][0]["attributes"]["explanation"]).to eq("good photo of star 1")
    expect(favorites_json["data"][0]["attributes"]["url"]).to eq("star_img_1.com")
    expect(favorites_json["data"][0]["attributes"]["title"]).to eq("star_1")
    expect(favorites_json["data"][1]["attributes"]["explanation"]).to eq("good photo of star 2")
    expect(favorites_json["data"][1]["attributes"]["url"]).to eq("star_img_2.com")
    expect(favorites_json["data"][1]["attributes"]["title"]).to eq("star_2")
    expect(favorites_json["data"][1]["attributes"]["media_type"]).to eq("video")
  end

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
