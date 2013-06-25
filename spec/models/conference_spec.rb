require 'spec_helper'

describe Conference do
  before(:each) do
    @conference = Conference.new(name: "RubyConf 2013", slug: "ruby-conf-2013",
                                start_date: Date.new, end_date: Date.new)
  end

  it 'is valid with a name, slug, start_date, end_date' do
    expect(@conference).to be_valid
  end

  it 'is invalid without a name' do
    @conference.name = nil
    expect(@conference).to have(1).errors_on(:name)
  end

  it 'is invalid without a slug' do
    @conference.slug = nil
    expect(@conference).to have(1).errors_on(:slug)
  end

  it 'is invalid without a start_date' do
    @conference.start_date = nil
    expect(@conference).to have(1).errors_on(:start_date)
  end

  it 'is invalid without a end_date' do
    @conference.end_date = nil
    expect(@conference).to have(1).errors_on(:end_date)
  end

  xit 'responds to a request with the correct conference id' do
    expect(@conference[:id]).to eq(1)
  end

  it 'responds to a request with the correct conference name' do
    expect(@conference[:name]).to eq("RubyConf 2013")
  end

  it 'responds to a request with the correct conference slug' do
    expect(@conference[:slug]).to eq("ruby-conf-2013")
  end

  xit 'responds to a request with the correct conference start_date' do
    expect(@conference[:start_date]).to eq(Date.new)
  end

  xit 'responds to a request with the correct conference end_date' do
    expect(@conference[:end_date]).to eq(Date.new)
  end

  xit 'responds to a request with associated Tracks title' do
    expect(@conferenc.track[:title]).to eq()
  end

end