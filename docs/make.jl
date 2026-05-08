using Documenter: Documenter, DocMeta, deploydocs, makedocs
using ITensorFormatter: ITensorFormatter
using ITensorTestPackage: ITensorTestPackage

DocMeta.setdocmeta!(
    ITensorTestPackage, :DocTestSetup, :(using ITensorTestPackage); recursive = true
)

ITensorFormatter.make_index!(pkgdir(ITensorTestPackage))

makedocs(;
    modules = [ITensorTestPackage],
    authors = "ITensor developers <support@itensor.org> and contributors",
    sitename = "ITensorTestPackage.jl",
    format = Documenter.HTML(;
        canonical = "https://itensor.github.io/ITensorTestPackage.jl",
        edit_link = "main",
        assets = ["assets/favicon.ico", "assets/extras.css"]
    ),
    pages = ["Home" => "index.md", "Reference" => "reference.md"]
)

deploydocs(;
    repo = "github.com/ITensor/ITensorTestPackage.jl", devbranch = "main",
    push_preview = true
)
