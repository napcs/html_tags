require 'test_helper'

class HtmlTagsTest < Test::Unit::TestCase
  
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::AssetTagHelper
    ActionView::Helpers::AssetTagHelper.cache_asset_timestamps = false
  
  def test_stylesheet_tag
    value = '<link href="/stylesheets/style.css" media="screen" rel="stylesheet" type="text/css">'
    assert_equal value, stylesheet_link_tag("style")
  end
  
  def test_image_tag
    value ='<img alt="Rails" src="/images/rails.png">'
    assert_equal value, image_tag("rails.png")
    
  end
  
end
