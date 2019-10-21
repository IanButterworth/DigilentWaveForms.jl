
"""
    str(cstring::Vector{Cchar})

Print cstring as string.
"""
str(cstring::Vector{Cchar}) = unsafe_string(pointer(cstring))
