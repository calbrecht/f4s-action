FROM nixpkgs/nix-flakes:latest

RUN mkdir -p /etc/nix \
    && echo "experimental-features = ca-references nix-command flakes" > /etc/nix/nix.conf

RUN nix registry add nixpkgs github:NixOS/nixpkgs/f217c0ea7c148ddc0103347051555c7c252dcafb \
    && nix flake archive nixpkgs

ENTRYPOINT ["sh", "-c"]