class GroceryList

#Initialize is called when the new method is used
#to create a new instance of the class.

  def initialize
    @grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
  end

  def add (add_item)
    if add_item == "y"
      puts "What did you forget?"
      item = gets.chomp.to_s
      @grocery_list.push(item)
      list_length = @grocery_list.length
      puts "Your grocery list now has #{list_length} items"
    else
      puts "Bon Appetit!"
      list_length = @grocery_list.length
      puts "Your grocery list has #{list_length} items"
      exit
    end
  end

  puts "Returns the first draft of your grocery list"
  def print_list
    @grocery_list.each do |item|
      puts "*#{item}"
    end
    puts ""

    puts "Returns alphabetically sorted grocery list"
    @grocery_list = @grocery_list.sort
    @grocery_list.each do |item|
      puts "*#{item}"
    end
    puts ""

    puts "There wasn't any salmon!"
    puts "Here is the list without salmon"
    @grocery_list.delete('salmon')
    @grocery_list.each do |item|
      puts "*#{item}"
    end
    puts ""

    if @grocery_list.include? 'bananas'
      puts "You don't need to pick up bananas\r\n"
    else
      puts "You need to pick up bananas!\r\n"
    end

    puts "The second item in the list is #{@grocery_list[1]}!!\n\r"
  end

  def action_loop
    while true
      print_list
      puts "Add another item to the list? (y/n)"
      add_item = gets.chomp.to_s
      add(add_item)
    end
  end
end

groceries = GroceryList.new
groceries.action_loop
