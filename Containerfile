FROM adelielinux/adelie:1.0-beta6

LABEL com.github.containers.toolbox="true" \
      name="adelie-toolbox" \
      version="1.0-beta6" \
      usage="This image is meant to be used with the toolbox command" \
      summary="Base image for creating Adelie Toolbx containers" \
      maintainer="Ash Logan <ash@heyquark.com>"

RUN apk update && \
	apk add adelie-base libcap sudo bash && \
	rm -rf /var/cache/apk

# Enable sudo permission for wheel users
RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/toolbox
