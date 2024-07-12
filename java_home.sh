#!/bin/bash

# java_home.sh
#
# This script sets the JAVA_HOME environment variable based on the location of the currently selected
# Java compiler (javac). It is intended to be sourced by the shell on login to ensure that JAVA_HOME
# is always correctly configured to point to the installed Java Development Kit (JDK).

export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
