module Rubyhammer
  module RHighlightJSHelper
    def highlighter(style='default', options={:languages=>""})
      html =  stylesheet_link_tag(style) 
      html += "<script script type=\"text/javascript\" src=\"/javascripts/highlight.js\"></script>"
      html += "<script>initHighlightingOnLoad(#{options[:languages]});</script>"
    end
  end
end