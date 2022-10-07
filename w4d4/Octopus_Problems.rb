def sluggish_Octopus_Problem(arr) #bubble_sort would work too
#find the longest fish in O(n^2) time #compare all fish lengths to all other fish lengths
    new_arr = []
    arr.each_with_index do |ele1, idx1| 
        arr.each_with_index do |ele2, idx2| 
            if idx2 > idx1
                new_arr << ele1 if ele1 > ele2
            end
        end
    end
    lengths = new_arr.map { |ele| ele.length } 
    new_arr.each do |ele|
        if ele.length == lengths.max
            return ele
        end
    end
end

p sluggish_Octopus_Problem(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])
#Find the longest fish in O(n log n) time #quick_sort or mergesort
def dominant_octopus(arr) 
    return arr if arr.length <= 1
    new_arr =  arr.map { |ele| ele.length }
    pivot = arr[0].length
    left = new_arr[1..-1].select { |ele| ele < pivot}
    right = new_arr[1..-1].select { |ele| ele >= pivot}
    sorted_lengths = dominant_octopus(left) + [pivot] + dominant_octopus(right)
    return sorted lengths[-1]
end

p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])