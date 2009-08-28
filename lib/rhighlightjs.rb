module Rubyhammer
  module RHighlightJSHelper
    LANGUAGES =[:"1c", :apache, :avrasm, :axapta, :bash, :cpp, :cs, :css,
      :delphi, :diff, :django, :dos, :dynamic, :"html-xml", :ini, :java,
      :javascript, :lisp, :mel, :parser3, :perl, :php, :profile, :python,
    :renderman, :ruby, :smalltalk, :sql, :static, :vbscript, :www]

    STYLESHEETS = [:ascetic, :brown_paper, :dark, :default, :far,
      :github, :idea, :ir_black, :magula, :school_book, :sunburst,
    :vs, :zenburn, :notebook]

    def highlighter(options={})
      options.reverse_merge!(:style=>'default', :languages=>'', :compact => false,
        :replace_indent => false)
      options[:languages] = LANGUAGES if options[:languages] == :all
      html =  stylesheet_link_tag(options[:style], :title => options[:style])
      if options[:compact]
        html << javascript_include_tag('highlight.pack')
      else
        html << javascript_include_tag('highlight',
        options[:languages].map{|l| "languages/#{l}"})
      end
      html << "hljs.tabReplace = \'<span class=\"indent\">&nbsp;</span>\';" if options[:replace_indent]
      html << javascript_tag("hljs.initHighlightingOnLoad(#{options[:languages].map{|l| "'#{l}'"}.join(', ')});")
    end
  end
end

