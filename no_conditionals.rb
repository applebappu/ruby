class Object
    def if_true
        yield
        self
    end

    def if_false
        self
    end
end

class FalseClass
    def if_true
        self
    end

    def if_false
        yield
        self
    end
end

class NilClass
    def if_true
        self
    end

    def if_false
        yield
        self
    end
end

1.send(:==, 1).
    if_true {puts 'is true'}.
    if_false {puts 'is false'}