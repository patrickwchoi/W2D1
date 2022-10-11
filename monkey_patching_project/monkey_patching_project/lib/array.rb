# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.empty?
        return self.max-self.min
    end
    def average
        return nil if self.empty?
        self.inject{|sum, el| sum + el }.to_f / self.length
    end
    def median
        return nil if self.empty?
        if self.length%2==1
            return self.sort[(self.length/2)]
        else
            return (self.sort[(self.length/2)-1]+self.sort[(self.length/2)])/2.0
        end
    end
    def counts
        hash=Hash.new(0)
        self.each do |el|
            if hash[el]==0
                hash[el]=1
            else
                hash[el]+=1
            end
        end
        hash
    end

    #Part 2
    def my_count(arg)
        count=0
        self.each {|el| count+=1 if el==arg}
        count
    end
    def my_index(arg)
        self.each_with_index {|el,i| return i if el==arg}
        return nil
    end
    def my_uniq
        ans=[]
        self.each do |el|
            if ans.include?(el)
                nil
            else
                ans<<el
            end
        end
        ans
    end
    def my_transpose
        ans=[]
        (0...self.first.length).each {|i| ans<<[]}
        self.each_with_index do |row,i|
            row.each_with_index do |el, j|
                ans[j][i]=el
            end
        end
        ans
    end
end
