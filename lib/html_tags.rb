module ActionView
  module Helpers
  
    class InstanceTag
      alias :old_tag :tag_without_error_wrapping
      def tag_without_error_wrapping(name, options = nil, open = true, escape = true)
        old_tag(name, options, open, escape)
      end
    end
  
    module TagHelper 
  
      alias :old_tag :tag
      def tag(name, options = nil, open = true, escape = true)
        old_tag(name, options, open, escape)
      end
  
    end
  
    module AssetTagHelper
      def stylesheet_tag(source, options)
        tag("link", { "rel" => "stylesheet", "type" => Mime::CSS, "media" => "screen", "href" => html_escape(path_to_stylesheet(source)) }.merge(options), true, false)
      end
    end
    
      
  end

end
