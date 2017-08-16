def set_add_el(hash, key)
	hash[key] = true
	hash
end

def set_remove_el(hash, key)
	hash.delete(key)
	hash
end

def set_list_els(hash)
	hash.keys
end

def set_member?(hash, key)
	hash.has_key?(key)
end

def set_union(hash1, hash2)
	hash1.merge(hash2)
end

def set_intersection(hash1, hash2)
	hash_new = {}
	hash1.each do |key, value|
		if hash2.has_key?(key)
			hash_new[key] = value
		end
	end
	hash_new
end

def set_minus(hash1, hash2)
	hash_new = {}
	hash1.each do |key, value|
		p key
		if !hash2.has_key?(key)
			hash_new[key] = value
		end
	end
	hash_new
end

def hash_correct(hash)
	hash_new = {}
	hash.each do |key, value|
		hash_new[value[0].to_sym] = value
	end
	hash_new

end



p set_add_el({'A' => true}, 'A')
p set_remove_el({:x => true}, :x)
p set_list_els({:x => true, :y => true})
p set_member?({:x => true}, :x)
p set_union({:x => true}, {:y => true})
p set_intersection({:x => true, :y => true}, {:z => true, :y => true})
p set_minus({:x => true, :y => true}, {:z => true, :y => true})

p hash_correct({ :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" })
