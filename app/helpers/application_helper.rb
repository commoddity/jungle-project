module ApplicationHelper

  def pluralize_without_count(count, noun)
    count == 1 ? noun : noun.pluralize
  end

end
