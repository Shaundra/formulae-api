class Element < ApplicationRecord
  belongs_to :formula
  has_many :notes, -> { order 'created_at desc' }, dependent: :destroy, as: :notable
  has_many :element_tags
  has_many :tags, through: :element_tags

  def self.set_site_preview_params(url)
    # byebug
    page = MetaInspector.new(url)
    default_img = 'http://www.math.ubc.ca/~cass/courses/m309-01a/goon/fig1.gif'
    page_image = page.images.best ? page.images.best : default_img
    page_title = page.title

    page_preview = {site_title: page_title, site_img_url: page_image}
    page_preview.to_json
  end
end
