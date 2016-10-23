class TodoList
  def initialize(str_arr)
    puts "Initializing to-do list"
    @todo_list = str_arr
  end

  def get_items
    @todo_list
  end

  def add_item(new_item)
    @todo_list << new_item
  end

  def delete_item(item)
    @todo_list.delete(item)
  end

  def get_item(num)
    @todo_list[num]
  end
end
