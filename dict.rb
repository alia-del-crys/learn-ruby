module Dict
  def Dict.new(num_buckets=256)
    #Initializes a Dict with the given number of buckets
    aDict = []
    (0...num_buckets).each do |i|
      aDict.push([])
    end
    
    return aDict
  end
  
  def Dict.hash_key(aDict, key)
    #Given a key this will create a number and then convert it to
    #an index for the aDict's buckets
    return key.hash % aDict.length
  end
  
  def Dict.get_bucket(aDict, key)
    #Given a key, find the bucket wher it would go
    bucket_id = Dict.hash_key(aDict, key)
    return aDict[bucket_id]
  end
  
  def Dict.get_slot(aDict, key, default=nil)
    #Returns the index, key and value of a slot found in a bucket.
    bucket = Dict.get_bucket(aDict,key)
    
    bucket.each_with_index do |kv, i|
      k, v = kv
      if key == k
        return i, k, v
      end
    end
    
    return -1, key, default
  end
  
  def Dict.get(aDict, key, default=nil)
    #Gets the value in a bucket for the given key, or the default.
    i, k, v = Dict.get_slot(aDict, key, default=default)
    return v
  end
  
  def Dict.set(aDict, key, value)
    # Sets the key to the value, replacing and existing value.
    bucket = Dict.get_bucket(aDict, key)
    i, k, v = Dict.get_slot(aDict, key)
    
    if i >= 0
      bucket[i] = [key, value]
    else
      bucket.push([key, value])
    end
  end
  
  def Dict.delete(aDict, key)
    #Deletes the given key from the Dict.
    bucket = Dict.get_bucket(aDict, key)
    
    (0...bucket.length).each do |i|
      k, v = bucket[i]
      if key == k
        bucket.delete_at(i)
        break
      end
    end
  end
  
  def Dict.list(aDict)
    # Prints out what's in the Dict.
    aDict.each do |bucket|
      if bucket
        bucket.each {|k, v| puts k, v}
      end
    end
  end
  
end#module Dict

=begin

new
    First I start by creating a function that makes a Dict for you, also known as an initializer.
 What I've done is created an aDict variable that has an array, and then I put num_buckets arrays inside it. 
These buckets will be used to hold the contents of the Dict as I set them. 
Later I use aDict.length in other functions to find out how many buckets there are. Be sure you understand that!

hash_key
    This deceptively simple function is the core of how a hash works. 
What it does is uses the built-in Ruby hash function to convert a string to a number. 
Ruby uses this function for its own hash data structure, and I'm just reusing it. 
You should fire up a Ruby console to see how it works. 
Once I have a number for the key, I then use the % (modulus) operator and the aDict.length to get a bucket where this key can go. 
As you should know, the % (modulus) operator will divide any number and give me the remainder.
 I can also use this as a way of limiting giant numbers to a fixed smaller set of other numbers. 
If you don't get this then use Ruby to explore it.

get_bucket
    This function then uses hash_key to find the bucket that a key could be in. 
Since I did % aDict.length in the hash_key function, I know whatever bucket_id I get will fit into the aDict array. 
Using the bucket_id I can then get the bucket where the key could be.

get_slot
    This function uses get_bucket to get the bucket a key could be in, and then it simply 
rolls through every element of that bucket until it finds a matching key. Once it does it 
returns the tuple of (i, k, v) which is the index the key was found in, the key itself, and the value set for that key. 
You now know enough to see how this data structure works. It takes keys, hashes and modulus them to find a bucket,
 then searches that bucket to find the item. This effectively cuts the amount of searching necessary to a fraction of what it would be normally.

get
    This is a "convenience function" which does what most people want a Dict to do. 
It uses get_slot to get the (i, k, v) and then just returns the v (value) only. 
Make sure you understand how the default variable works, and how the (i, k, v) in get_slot is assigned to the i, k, v variables in get.

set
    To set a key/value pair all I need to do is get the bucket, and append the new (key, value) to it so it can be found later. 
However, I want my Dict to allow one key at a time. To do that, first I have to find the bucket then check if this key already exists. 
If it does then I replace it in the bucket with the new one, and if it doesn't then I append. 
This is actually slower than simply appending, but more likely what a user of Dict wants. 
If you wanted to allow multiple values for a key you could simply have get go through every slot in the bucket and return an array of everything
 it found. This is a good example of tradeoffs in design. The current version is faster on get, but slower on set.

delete
    To delete a key, I simply get the bucket and search for the key in it, and delete it from the array. 
However, because I chose to make set only store one key/value pair I can stop when I have found one. 
If I had decided to allow multiple values for each key by simply appending I would have also made delete slower 
because I would have needed to go through every slot on delete just in case it had a key/value pair that matched.

list
    The last function is simply a little debug function that prints out what's in the Dict and should be trivial for you to understand. 
It just gets each bucket, then goes through each slot in the bucket.
=end
