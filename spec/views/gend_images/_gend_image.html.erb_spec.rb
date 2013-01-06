require 'spec_helper'

describe 'gend_images/_gend_image.html' do

  subject {
    render :partial => 'gend_images/gend_image',
           :locals => {:gend_image => gend_image}
  }

  context 'the image has been processed' do
    let(:gend_thumb) { mock_model(GendThumb) }
    let(:gend_image) { mock_model(GendImage,
                                  :work_in_progress => false,
                                  :gend_thumb => gend_thumb,
                                  :id_hash => 'id_hash') }

    it 'shows the thumbnail' do
      subject
      expect(rendered).to match(gend_thumb.id.to_s)
    end

  end

  context 'the image has not been processed yet' do

    let(:gend_image) { mock_model(GendImage, :work_in_progress => true) }

    it 'shows the under construction image' do
      subject
      expect(rendered).to match('under_construction')
    end

  end

end