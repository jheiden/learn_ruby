


def has_qu_sound(str)
    #if !!str[0].match(/^[bcdfghjklmnpqrstvxz]/)
    return str + str.slice!(0,2) + 'ay'
#end
end

puts has_qu_sound("quiet")