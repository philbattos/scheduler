require 'spec_helper'

describe Track do
  before(:each) do
    @track = Track.new(title: 'Refactoring', conference_id: 1, location: 'The RSpec Brain',
                      description: "hello, is this the test you're looking for?")
  end

  it 'is valid with a title, conference_id, description, and location' do
    expect(@track).to be_valid
  end

  it 'is invalid without title' do
    @track.title = nil
    expect(@track).to have(1).errors_on(:title)
  end

  it 'is invalid without conference_id' do
    @track.conference_id = nil
    expect(@track).to have(1).errors_on(:conference_id)
  end

  it 'is invalid without description' do
    @track.description = nil
    expect(@track).to have(1).errors_on(:description)
  end

  it 'is invalid without location' do
    @track.location = nil
    expect(@track).to have(1).errors_on(:location)
  end
end