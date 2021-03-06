module GendImagesHelper

  def gend_image_url_for(gend_image)
    url_for(
        controller: :gend_images,
        action: :show,
        id: gend_image.id_hash,
        format: gend_image.format,
        host: MemeCaptainWeb::Config::GendImageHost || request.host
    )
  end

end
