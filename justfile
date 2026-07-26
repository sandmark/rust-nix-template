default:
    @just --list

# Run pre-commit hooks on all files with prek, including autoformatting
prek:
    prek run --all-files

# Run 'cargo run' on the project
run *ARGS:
    cargo run {{ARGS}}

# Run 'bacon' to test the project (auto-recompiles)
bacon:
    bacon -j test
