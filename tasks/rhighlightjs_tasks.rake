namespace :rhighlightjs do
  
  PLUGIN_ROOT = File.dirname(__FILE__) + '/../'  
  
  desc 'Install Highlighter files'
  task :install do
    FileUtils.cp_r Dir[PLUGIN_ROOT + '/assets/stylesheets/*.css'], RAILS_ROOT + '/public/stylesheets'
    FileUtils.cp_r Dir[PLUGIN_ROOT + '/assets/javascripts/*'], RAILS_ROOT + '/public/javascripts' 
  end  
  
  desc 'Unistall Highlighter files'
  task :uninstall do
    #FileUtils.rm %W(highlight.js).map { |f| RAILS_ROOT + '/public/javascripts/' + f  }
    #FileUtils.rm %W(dark.css).map { |f| RAILS_ROOT + '/public/styleesheets/' + f  }
  end  
  
end  