require 'spec_helper'

describe Session do
  before(:each) do
    @session = Session.new(title: 'Refactoring 101', track_id: 1, location: 'The Refactoring Room',
                      description: "hello, is this the test you're looking for?", speaker: 'Katina',
                      start_time: '10:00:00', end_time: '11:00:00')
  end

  it 'is valid with a title, track_id, description, location, speaker, date, start_time, and end_time' do
    expect(@session).to be_valid
  end

  it 'is invalid without title' do
    @session.title = nil
    expect(@session).to have(1).errors_on(:title)
  end

  it 'is invalid without speaker' do
    @session.speaker = nil
    expect(@session).to have(1).errors_on(:speaker)
  end

  it 'is invalid without start_time' do
    @session.start_time = nil
    expect(@session).to have(1).errors_on(:start_time)
  end

  it 'is invalid without end_time' do
    @session.end_time = nil
    expect(@session).to have(1).errors_on(:end_time)
  end

  it 'is invalid without description' do
    @session.description = nil
    expect(@session).to have(1).errors_on(:description)
  end

  it 'is invalid without location' do
    @session.location = nil
    expect(@session).to have(1).errors_on(:location)
  end
end