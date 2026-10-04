# TOFIX

Findings from a code scan on 2026-10-04.

## Medium

- `src/function.lua:13` - `io.read("*number")` returns `nil` on non-numeric input and `fact(nil)` then crashes at line 8 ("attempt to perform arithmetic on local 'n'"); negative or fractional input never reaches `n == 0` (line 5) and recurses until stack overflow/timeout. Check `a` for `nil` and reject non-integers / `n < 0` before calling `fact`, and use `n <= 1` as the base case.

## Low

- `README.md` - the README has no content about the demos themselves (there is no `tera.snippets/main.md.tera`); add a snippet listing `src/hello_world.lua` and `src/function.lua` and how to run them (`lua src/<file>.lua`).
- `README.md:8` - "project website: https://veltzer.github.io/demos-lang-lua" points to a GitHub Pages site that does not exist (no `[pages]` in `rsconstruct.toml`, Pages API returns 404). Fleet-wide shared file: `tera.templates/README.md.tera:10` should emit the website line only when the repo publishes Pages.
