module ApplicationHelper

  def hash1
    {:bread => 'white', :filling => 'peanut butter and jelly'}
  end

  def hash2
    {:bread => 'whole wheat'}
  end

  def template_id
    {:id => params[:action] }
  end

  def template_class
    {:class => "#{params[:controller].gsub(/\//,'-')} #{params[:action]}"}
  end
end
