require 'rails_helper'

describe 'NasaImagesearch API' do
  it 'should return searched image', :vcr do
    q = 'mars'
    get "/api/v1/imagesearch?q=#{q}"

    images_json = JSON.parse(response.body)
    expect(response).to be_successful
    expect(images_json["data"][0]["id"]).to eq(1)
    expect(images_json["data"][0]["attributes"]["href"]).to eq("https://images-assets.nasa.gov/image/PIA07081/PIA07081~thumb.jpg")
  end
end
