#custom routes for this plugin
if Rails::VERSION::MAJOR >= 3
  RedmineApp::Application.routes.draw do
  
      match "convert/htmltotextile", :via => [:post, :put]
  end
else
  ActionController::Routing::Routes.draw do |map|
    map.with_options :controller => 'convert' do |convert_routes|
      convert_routes.connect "convert/htmltotextile", :conditions => { :method => [:post, :put] }, :action => 'htmltotextile'
    end
  end
end
