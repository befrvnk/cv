{ pkgs, ... }:

{
  packages = [
    pkgs.html-tidy
    pkgs.nixfmt
    pkgs.prettier
    pkgs.python3
  ];

  scripts.serve.exec = ''
    python3 -m http.server 8000
  '';

  scripts.check.exec = ''
    tidy_status=0
    tidy_output="$(tidy -qe index.html 2>&1)" || tidy_status=$?

    # html-tidy exits with 1 for warnings and 2 for errors.
    # Icon elements are intentionally empty because Boxicons renders them
    # through CSS pseudo-elements, so mute those expected warnings.
    printf '%s\n' "$tidy_output" \
      | grep -v 'Warning: trimming empty <span>' \
      || true

    if [ "$tidy_status" -gt 1 ]; then
      exit "$tidy_status"
    fi

    prettier --check index.html assets/styles.css README.md
    nixfmt --check devenv.nix
  '';

  scripts.format.exec = ''
    prettier --write index.html assets/styles.css README.md
    nixfmt devenv.nix
  '';
}
