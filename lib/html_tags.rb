module ActionView::Helpers::TagHelper
  alias :old_tag :tag
  def tag(name, options = nil, open = true, escape = true)
    old_tag(name, options, open, escape)
  end
  
  def stylesheet_tag(source, options)
    tag("link", { "rel" => "stylesheet", "type" => Mime::CSS, "media" => "screen", "href" => html_escape(path_to_stylesheet(source)) }.merge(options), true, false)
  end
  
end