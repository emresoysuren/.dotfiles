#!/bin/bash

# Configure Default Shell
echo -e "$TAG_STATUS Configuring the default shell as ${DEFAULT_SHELL}..."

readonly SHELL_PATH=$(which $DEFAULT_SHELL);

if [ $SHELL != $SHELL_PATH ]
then

    sudo sh -c "$SHELL_PATH >> /etc/shells"
    sudo chsh -s $SHELLPATH

    echo -e "$TAG_DONE Default shell is configured as ${DEFAULT_SHELL}."
else
    echo -e "$TAG_SKIP Default shell is already configured as ${DEFAULT_SHELL}."
fi