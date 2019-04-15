require 'rails_helper'

describe 'NASA image api' do
  it 'can connect', :vcr do
    search_images = NasaImageService.search_images("mars")
    expect(search_images[:collection][:metadata][:items][0][:media_type]).to eq("image")
  end
end
