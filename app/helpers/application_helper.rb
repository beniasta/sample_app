module ApplicationHelper
  # ページごとの完全なタイトルを返します。
  def full_title(page_title)
    base_title = "サンプルアプリ"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
  
  
  def bootstrap_class_for(flash_type)
    case flash_type
      when :succsess
          "alert-succsess"
      when :error
          "alert-danger"
      when :alert
          "alert-warnning"
      when :notice
        "alert-info"
      else
        flash_type.to_s

end