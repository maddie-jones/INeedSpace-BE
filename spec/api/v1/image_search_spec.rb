require 'rails_helper'

describe 'NasaImagesearch API' do
  it 'should return searched image', :vcr do
    q = 'mars'
    get "/api/v1/imagesearch?q=#{q}"

    apod_json = JSON.parse(response.body)
    expect(response).to be_successful
  end
end
