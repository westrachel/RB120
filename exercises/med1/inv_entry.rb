# Part 1: Why will the following fail when update_quantity is called?

# There is no setter initially defined for the quantity instance
#  variable. So, a new local variable quantity is being initialized
#  to point to the updated_count argument if the updated_count argument
#   is >= 0. If want to fix this, could define a setter method for quantity,
#   or add attr_writer :quantity, or add attr_accessor :quantity and remove
#    quantity from the attr_reader line, or could reference the instance
#    varaible by prefixing quantity with the @ symbol in the update_quantity
#    instance method
class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

# Part 2: Is there anything wrong with changing the attr_reader to
#   attr_accessor in the above and changing quantity to self.quantity
#   in the above to make sure the program doesn't fail when call update_quantity?

# That is a technically valid way to make update_quantity work. However, that could
#  have unintended consequences, as it allows for another way for the quantity instance
#   variable to be updated though the if statement being acknowledged that's built into
#   the update_quantity instance method as a quality control to make sure the quantity
#  instance variable is only changed to something >= 0.

