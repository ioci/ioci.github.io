## rees

goes in .binder directory

https://repo2docker.readthedocs.io/en/latest/specification.html

## install ohmyzsh

ways that don't work
```dockerfile
RUN useradd --system --no-create-home --no-user-group --no-user-group --disabled-login --home-dir "/etc/skel" skel \
    && chown --recursive skel /etc/skel \
    && sudo --user=skel sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --skip-chsh
```

```dockerfile
RUN echo 'DSHELL=/bin/zsh' >> /etc/adduser.conf \
    && useradd  --defaults --shell /bin/zsh \
    && TEMP_DIR="$(mktemp --dir)" \
    && HOME=$TEMP_DIR sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended \
    && cp --link --recursive $TEMP_DIR "/etc/skel/" \
    && cp --link --recursive $TEMP_DIR "/root/" \
    && rm --recursive --force $TEMP_DIR
```