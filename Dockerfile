FROM nixpkgs/nix-flakes:latest

RUN mkdir -p /etc/nix \
    && echo "experimental-features = ca-references nix-command flakes" > /etc/nix/nix.conf

ENTRYPOINT ["sh", "-c"]
