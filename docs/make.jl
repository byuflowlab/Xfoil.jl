using Documenter, Xfoil

makedocs(;
    modules = [Xfoil],
    pages = [
        "Home" => "index.md",
        "Examples" => "examples.md",
        "Public API" => "public.md",
        "Private API" => "private.md"
    ],
    sitename = "Xfoil.jl",
    authors = "Taylor McDonnell <taylormcd@byu.edu>"
)

deploydocs(
    repo = "github.com/byuflowlab/Xfoil.jl.git"
)
