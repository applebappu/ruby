DATA = 
[
    'the horse and the hound and the horn that belonged to',
    'the farmer sowing his corn that kept',
    'the rooster that crowed in the morn that woke',
    'the priest all shaven and shorn that married',
    'the man all tattered and torn that kissed',
    'the maiden all forlorn that milked',
    'the cow with the crumpled horn that tossed',
    'the dog that worried',
    'the cat that killed',
    'the rat that ate',
    'the malt that lay in',
    'the house that Jack built'
]

class House
    attr_reader :formatter, :data

    def initialize(orderer: DefaultOrder.new, formatter: DefaultFormatter.new)
        @formatter      = formatter
        @data           = orderer.order(DATA)
    end

    def recite
        (1..data.length).map {|i| line(i)}.join("\n")
    end

    def line(number)
        "This is #{phrase(number)}.\n"
    end

    def phrase(number)
        parts(number).join(" ")
    end

    def parts(number)
        formatter.format(data.last(number))
    end
end

class DefaultOrder
    def order(data)
        data
    end
end

class RandomOrder
    def order(data)
        data.shuffle
    end
end

class DefaultFormatter
    def format(parts)
        parts
    end
end

class EchoFormatter
    def format(parts)
        parts.zip(parts).flatten
    end
end

puts House.new.recite

puts House.new(orderer: RandomOrder.new, formatter: EchoFormatter.new).recite

# lesson: make 'nil' explicit