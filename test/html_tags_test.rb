require 'test_helper'

class HtmlTagsTest < Test::Unit::TestCase
  
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::AssetTagHelper
  include ActionView::Helpers::FormHelper
  include ActionView::Helpers::FormTagHelper
  
  
  def test_stylesheet_tag
    value = '<link href="/stylesheets/style.css" media="screen" rel="stylesheet" type="text/css">'
    assert_equal value, stylesheet_link_tag("style")
  end
  
  def test_image_tag
    value ='<img alt="Foo" src="/images/foo.png">'
    assert_equal value, image_tag("foo.png")
    
  end
  def test_form_tag
    value = '<input id="foo" name="foo" type="text">'
    assert_equal value, text_field_tag("foo")    
  end
  
  def test_should_have_database_working
    t= Todo.new(:name => "foo")
    assert t.save
    Todo.delete_all
  end
  
  def test_should_render_text_field
    @todo = Todo.new
    value = '<input id="todo_name" name="todo[name]" size="30" type="text">'
    assert_equal value, text_field(:todo, :name)
  end
  
    
    
    
end
