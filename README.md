# Set JAVA_HOME to PATH

# java_home.sh
## This script sets the JAVA_HOME environment variable based on the location of the currently selected

# The readlink command resolves the full path of the javac binary.
# The sed command removes the /bin/javac part from the path to get the JDK installation directory.
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")

# Explanation:
# 1. readlink -f /usr/bin/javac:
#    This command resolves the full path of the javac executable, which typically looks something like
#    /usr/lib/jvm/java-11-openjdk-amd64/bin/javac.
# 2. sed "s:/bin/javac::":
#    This part of the script removes the trailing /bin/javac from the resolved path, leaving us with the
#    JDK installation directory (e.g., /usr/lib/jvm/java-11-openjdk-amd64).
# 3. export JAVA_HOME=...:
#    This sets the JAVA_HOME environment variable to the resolved JDK directory.

# Usage:
# - This script should be placed in the /etc/profile.d directory to ensure it is sourced on login for all users.
# - After placing this script in /etc/profile.d, the JAVA_HOME variable will be automatically set for all users after you restart your shell. Or execute a source /etc/profile.d/java_home.sh;
#   to the correct JDK installation directory based on the currently selected javac binary.

