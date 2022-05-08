# syntax=docker.io/docker/dockerfile:1

FROM debian:11
# bullseye

ARG USERNAME="dev" \
    APT_PACKAGES="" \
    DSHELL="/bin/zsh"

RUN --mount=type=cache,target=/var/cache/ \
    apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends $APT_PACKAGES \
    && update-command-not-found \
    && update-alternatives --set editor /bin/nano \
    && /usr/sbin/update-locale --reset LANGUAGE='en_US.UTF-8' LC_ALL='C' \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen

# setup zsh
RUN echo 'DSHELL=/bin/zsh' >> /etc/adduser.conf \
    && useradd  --defaults --shell /bin/zsh \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended \
    && cp --link --recursive /root/.oh-my-zsh /root/.zshrc /etc/skel/

ENV LANG='LANG=en_US.UTF-8'

# create user
RUN useradd --create-home $USERNAME && \
    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
WORKDIR "/home/$USERNAME"
CMD ["/bin/zsh"]

# CMD [ "sudo --login --user=$USERNAME" ]