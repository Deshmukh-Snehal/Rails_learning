module CalculatesHelper
    class Calculate
        def self.sum(a,b)
           a.to_i + b.to_i
        end

        def self.subtr(a,b)
           a.to_i - b.to_i
        end
     
        def self.multipl(a,b)
           a.to_i * b.to_i
        end
        
        def self.divs(a,b)
           a.to_i / b.to_i
        end
    end
end
