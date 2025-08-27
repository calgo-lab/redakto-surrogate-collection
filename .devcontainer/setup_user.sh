#!/bin/bash
set -e

if id -u $USERNAME >/dev/null 2>&1; then
    echo "User $USERNAME already exists. Skipping setup."
else
    groupadd --gid $USER_GID $USERNAME
    useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
fi

exit 0