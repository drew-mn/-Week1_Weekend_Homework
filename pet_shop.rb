# error: no method called pet_shop_name
# error: wrong number of arguments - add pet_shop
#  no error: code returns nothing. Need to return something
def pet_shop_name (pet_shop)
  return pet_shop[:name]
end

def total_cash(total_cash)
  return total_cash[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pets_sold)
  return pets_sold[:admin][:pets_sold]
end

def increase_pets_sold(pets_sold, amount)
  pets_sold[:admin][:pets_sold] += amount
end

def stock_count(stock_amount)
  return stock_amount[:pets].length
end

# Covers 'found' and 'not found'. Not sure if this is correct...
def pets_by_breed(pet_shop, breed)
  pet_breed = []
  for pets in pet_shop[:pets]
    if pets[:breed] == breed
      pet_breed.push(pets[:breed])
    end
  end
  return pet_breed
end

def pets_by_breed(pet_shop, breed)
  pet_breed = []
  for pets in pet_shop[:pets]
    if pets[:breed] == breed
      pet_breed.push(pets[:breed])
    end
  end
  return pet_breed
end

def find_pet_by_name(pet_shop, name)
  for pets in pet_shop[:pets]
    if pets[:name] == name
      return pets
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pets in pet_shop[:pets]
    if name == pets[:name]
      return pets.delete(:name)
    end
  end
  return nil
end

def add_pet_to_stock(pet_shop, plus_pet)
  return pet_shop[:pets].push(plus_pet)
end

def customer_cash(total_customer_cash)
  return total_customer_cash[:cash]
end

def remove_customer_cash (customer_cash, amount_removed)
  return customer_cash[:cash] -= amount_removed
end

def customer_pet_count(customers)
  customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# OPTIONAL

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price]
end


def sell_pet_to_customer(pet_shop, pets, customer)
  if pets != nil
    if customer_can_afford_pet(customer, pets) == true
      add_pet_to_customer(customer, pets)
      remove_customer_cash(customer, pets[:price])
      pet_shop[:admin][:pets_sold]+=1
      add_or_remove_cash(pet_shop, pets[:price])
    end

  end
end
