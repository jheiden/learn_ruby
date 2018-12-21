#write your code here

def translate (a_string)
    collector = []
    a_string.split(" ").each do |wrd|
        if !!wrd.match(/^[aoeui]/) 
            collector << starts_with_vocal(wrd)
        elsif !!wrd.match(/^[bcdfghjklmnpqrstvxyz]/) and unless !!wrd.match(/^[bcdfghjklmnpqrstvxyz]{2}/) || !!wrd.match(/qu/)
            then collector << starts_with_cons(wrd)
        end
        elsif !!wrd.match(/^[bcdfghjklmnpqrstvxyz]{2}/) and unless !!wrd.match(/^[bcdfghjklmnpqrstvxyz]{3}/) || !!wrd.match(/qu/) # negate qu sounds
            then collector << starts_with_two_cons(wrd)
        end
        elsif !!wrd.match(/^[bcdfghjklmnpqrstvxyz]{3}|^s[qu]/) and unless !!wrd.match(/sch/)
            collector << starts_with_three_cons(wrd)
        end
        elsif !!wrd.match(/sch/)
            collector << has_sch_sound(wrd)
        elsif !!wrd.match(/qu/)
            collector << has_qu_sound(wrd)
    end     
end
        return collector.join(" ")
end

# Rule 1 => starts with vocal
def starts_with_vocal (str)
    return str + 'ay' 
end

# Rule 2 => starts with consonant
def starts_with_cons (str)
    return str + str.slice!(0,1) + 'ay'
end

# Rule 3 => word starts with two consonants = cherry => erry + ch + ay
def starts_with_two_cons (str)
    return str + str.slice!(0,2) + 'ay'
end

# Rule 4 => word starts with three consonants = three => ee + thr + ay
def starts_with_three_cons (str)
    return str + str.slice!(0,3) + 'ay'
end

# Rule 5 => counts 'sch' as a single phoneme => school = ool + sch + ay
def has_sch_sound (str)
    return str + str.slice!(0,3) + 'ay'
end

# Rule 6 => counts 'qu' as a consonant even when it's preceded by a consonant" => square = are + squ + ay
# Must account for other cases too Rule 2
def has_qu_sound(str)

    return str + str.slice!(0,2) + 'ay'
end




