require 'rails_helper'

describe 'NASA APOD api' do
  it 'can connect', :vcr do
    day_image = ApodService.day_image
    expect(day_image[:service_version]).to eq("v1")
    end
end
