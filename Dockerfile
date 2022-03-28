FROM python
COPY . /app
RUN python3 -m pip install --user pipx && python3 -m pipx ensurepath
RUN python3 -m pipx install nbdime && python3 -m pipx inject nbdime jupyter && python3 -m pipx ensurepath && nbdime config-git --enable --global
WORKDIR /app
ENTRYPOINT ["nbdiff-web", "-p", "8080", "$(git rev-parse main)", "$(git rev-parse HEAD)", "examples/"]
