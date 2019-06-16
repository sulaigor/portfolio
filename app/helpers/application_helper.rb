module ApplicationHelper

  def body_classes
    "#{I18n.locale.to_s} #{params[:controller].gsub('/', '-')} #{params[:action]}"
  end

  def active_link(controller_name)
    'active' if params[:controller] == controller_name
  end

end
