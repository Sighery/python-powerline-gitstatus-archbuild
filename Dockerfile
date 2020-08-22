FROM sighery/archbuilder:latest AS builder

USER builder

COPY --chown=builder ./python-powerline-gitstatus/* package/
WORKDIR package

RUN makepkg -s --needed --noconfirm --noprogressbar

CMD ["/bin/bash"]
