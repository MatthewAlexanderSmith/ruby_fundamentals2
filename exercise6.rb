class Groceries

#Initialize is called when the new method is used
#to create a new instance of the class.

def initialize
  @grocery_list = ["carrots", "Toilet paper", "apples", "salmon"]
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

  def print_list
    puts ""

    @grocery_list.each do |item|
      puts "*#{item}"
    end

    if @grocery_list.include? 'bananas'
      puts "You don't need to pick up bananas"
    else
      puts "You need to pick up bananas!"
    end

  end

  def action_loop
    add_item = nil
    until add_item == "n"
      print_list
      puts "Add Item? (y/n)"
      add_item = gets.chomp.to_s
      add(add_item)
    end
  end
end

groceries = Groceries.new
groceries.action_loop
