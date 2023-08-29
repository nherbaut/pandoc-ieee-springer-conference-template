FROM debian:12-slim
RUN apt update && apt install texlive-full pandoc --yes&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/pandoc"]
