require 'rails_helper'

describe 'NASA APOD api' do
  it 'can connect', :vcr do
    day_image = ApodService.day_image
    expect(day_image[:date]).to eq("2019-04-13")
    end
end
