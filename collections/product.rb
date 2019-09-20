class Product
  @@products = []
  attr_reader :id, :name, :quantity, :price

  def initialize(data = {})
    @id =  data[:id] || 0
    @name =  data[:name] || 'Test Product'
    @quantity =  data[:quantity] || 0
    @price =  data[:price] || 0
    @@products.push(self)
  end

  def self.all
    @@products
  end

  def self.product_names
    # basic form
    # @@products.map { |product| product.name }
    # short form
    @@products.map(&:name)
  end

  def self.sold_out
    # reject: returns objects that do not satisfy the condition
    # @@products.reject { |product| product.quantity > 0 }
    # select: returns objects that satisfy the condition
    @@products.select { |product| product.quantity <= 0 }
  end

  def self.total_price
    # simple method
    # total_price = 0
    # @@products.each do |product|
    #   total_price += product.quantity * product.price
    # end
    # total_price

    # short method
    #The first time through the list 'acc' is set to '0' and 'product'
    # is set to the first item in the array. The next time through it 'acc'
    # is set to the value of the calculation and 'product' is set
    #to the next item in the array. The cycle repeats
    @@products.reduce(0){ |acc, product| acc + product.quantity * product.price }
  end
end
