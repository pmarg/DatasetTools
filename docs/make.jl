using DatasetTools
using Documenter

DocMeta.setdocmeta!(DatasetTools, :DocTestSetup, :(using DatasetTools); recursive=true)

makedocs(;
    modules=[DatasetTools],
    authors="Panos Margaris",
    repo="https://github.com/pmarg/DatasetTools.jl/blob/{commit}{path}#{line}",
    sitename="DatasetTools.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://pmarg.github.io/DatasetTools.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/pmarg/DatasetTools.jl",
    devbranch="master",
)
