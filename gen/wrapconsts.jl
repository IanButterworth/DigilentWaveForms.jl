function wrapconsts(headerpath::String, outfile::String)
    lines = readlines(headerpath)
    filter!(x -> startswith(x, "const"), lines)

    juliaconsts = String[]
    for line in lines
        parts = split(line, r" +")

        if length(parts) >= 4
            if parts[4] != "="
                val = strip(parts[4], ';')
                name = strip(parts[3], '=')
                type = parts[2]
                juliaconst = "const $(name) = $(type)($(val))"
            else
                val = rstrip(parts[5], ';')
                name = parts[3]
                type = parts[2]
                juliaconst = "const $(name) = $(type)($(val))"
            end
            push!(juliaconsts, juliaconst)
        else
            @warn "Couldn't parse $line"
        end
    end
    @info "Found and wrapped $(length(juliaconsts)) consts"
    isfile(outfile) && rm(outfile)
    @info "Writing outfile"
    open(outfile, "w") do io
        write(io, "# Consts wrapped by wrapconsts.jl\n\n")
        for juliaconst in juliaconsts
            write(io, juliaconst)
            write(io, "\n")
        end
    end
end
