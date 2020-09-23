using Documenter, Xfoil

makedocs(;
    modules = [Xfoil],
    pages = [
        "Home" => "index.md",
        "Getting Started" => "guide.md",
        "Examples" => "examples.md",
        "Library" => "library.md"
    ],
    sitename = "Xfoil.jl",
    authors = "Taylor McDonnell <taylormcd@byu.edu>"
)

deploydocs(
    repo = "github.com/byuflowlab/Xfoil.jl.git"
)
