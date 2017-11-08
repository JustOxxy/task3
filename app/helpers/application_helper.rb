module ApplicationHelper
  # Возвращает полный заголовок на основе заголовка страницы.
  def full_title(page_title = '')
    base_title = "MyProject"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def bootstrap_class_for(name)
    {
        success: 'alert-success',
        error: 'alert-danger',
        danger: 'alert-danger',
        alert: 'alert-warning',
        notice: 'alert-info',
    }[name.to_sym] || name
  end
end
