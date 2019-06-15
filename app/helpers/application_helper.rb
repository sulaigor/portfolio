module ApplicationHelper

  def body_classes
    "#{I18n.locale.to_s} #{params[:controller].gsub('/', '-')} #{params[:action]}"
  end

end
