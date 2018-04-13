def pet_shop_name(hash)
  return hash[:name]
end

def total_cash(hash)
  return hash[:admin][:total_cash]
end

def add_or_remove_cash(hash, value)
   hash[:admin][:total_cash] += value
end

def pets_sold(hash)
  return hash[:admin][:pets_sold]
end

def increase_pets_sold(hash, num)
  hash[:admin][:pets_sold] += 2
end

def stock_count(hash)
  hash[:pets].length
end

def pets_by_breed(hash, breed)
  total_breed = []
  for pets in hash[:pets]
      total_breed.push(breed) if pets[:breed] == breed
    end
    return total_breed
end

def find_pet_by_name(hash, name)
 for pets in hash[:pets]
  if (pets[:name] == name)
    return name
  end
end
return nil
end

# def find_pet_by_name__returns_nil(hash, name)
#   counter = 0
#   for pets in hash[:pets]
# counter += 1 if pets[:name] != name
#   end
# return nil if counter.length-1 == hash[:pets].length
#
# end
#
def remove_pet_by_name(hash, name)
  for pets in hash[:pets]
  if name == pets[:name]
    pets[:name] = []
end
end
end
# why doesnt delete method work?

def add_pet_to_stock(hash, pet_hash)
  hash[:pets].push(pet_hash)
end

def stock_count(hash)
  hash[:pets].length
end


def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, value)
  return  customer[:cash]-= value
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, hash)
  customer[:pets].push(hash).count
end

def customer_can_afford_pet(customer, hash)
  if customer[:cash] >= hash[:price]
    return true
  else
    return false
  end
end

#ternary statement?

def sell_pet_to_customer(hash, pet, customer)
  # new_pet_for_craig = find_pet_by_name(@pet_shop, "Arthur")
  # customer[:pets].push(new_pet_for_craig)
    for petsh in hash[:pets]
      if petsh[:name] == pet
         customer[:pets].push(petsh)
         hash[:pets].delete(petsh)
         hash[:admin][:pets_sold] += customer[:pets].count
         customer[:cash] -= petsh[:price]
         hash[:admin][:total_cash] += petsh[:price]
       else
      end
      false
    end
  end
