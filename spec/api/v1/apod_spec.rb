require 'rails_helper'

describe 'Apod API' do
  it 'should return image of the day' do
    get '/api/v1/apod'

    apod_json = JSON.parse(response.body)
    expect(response).to be_successful
  end
end
