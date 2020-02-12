module ApplicationHelper

  def pluralize_without_count(count, word)
    count == 1 ? word : word.pluralize
  end

end
