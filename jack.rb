class House
    def recite
        (1..data.length).map {|i| line(i)}.join("\n")
    end

    def line(number)
        "This is #{phrase(number)}.\n"
    end

    def phrase(number)
        data.last(number).join(" ")
    end

    def data
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
    end
end

puts House.new.recite