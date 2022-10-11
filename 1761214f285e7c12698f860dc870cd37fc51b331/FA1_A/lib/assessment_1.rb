def my_map!(arr, &prc)
    arr.each_with_index do |el, i|
        arr[i] = prc.call(el)
    end
    arr #do i need to return this? or just mutate
end

def two?(arr, &prc)
    count=0
    arr.each {|el| count+=1 if prc.call(el)}
    return true if count==2
    false
end

def nor_select(arr, prc1, prc2)
    ans=[]
    arr.each do |el|
        ans<<el if !prc1.call(el) && !prc2.call(el)
    end
    ans
end

def array_of_hash_sum(arr)
    sum=0
    arr.each do |hash|
        # sum+= hash.values.inject{|acc, n| acc + n}
        hash.values.each {|el|sum+=el}
    end
    sum
end

def slangify(str)
    v = 'aeiouAEIOU'
    ans=[]
    str.split(' ').each do |word|
        has_vowel=false
        vowel_ind=nil
        word.split('').each_with_index do |char,i|
            if v.include?(char) && has_vowel==false
                has_vowel=true
                vowel_ind=i
            end
        end
        if has_vowel
            word[vowel_ind] = ''
            ans<<word
        else 
            ans<<word
        end
    end
    ans.join(' ')
end

def char_counter(str, *args)
    ans = Hash.new(0)
    args = str.split('') if args.empty?
    args.each {|el| ans[el] = str.count(el)} 
    ans
end