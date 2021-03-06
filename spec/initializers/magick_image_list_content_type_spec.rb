# encoding: UTF-8

require 'spec_helper'

describe '#content_type' do

  def image_fixture(path)
    Magick::ImageList.new(Rails.root + "spec/fixtures/files/#{path}")
  end

  let(:gif) { image_fixture('ti_duck.gif') }
  let(:animated_gif) { image_fixture('omgcat.gif') }
  let(:jpeg) { image_fixture('ti_duck.jpg') }
  let(:png) { image_fixture('ti_duck.png') }

  it('detects gif') { expect(gif.content_type).to eq 'image/gif' }

  it('detects animated gif') do
    expect(animated_gif.content_type).to eq 'image/gif'
  end

  it('detects jpeg') { expect(jpeg.content_type).to eq 'image/jpeg' }

  it('detects png') { expect(png.content_type).to eq 'image/png' }

end
