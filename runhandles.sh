#!/bin/bash
#
#

if test -z "$2"; then
    echo "runhandles.sh <train> <test> <.vec> <.counts>"
    exit
fi

# Extra memory for java.
export MAVEN_OPTS="-Xmx3000m"

# Build the arguments to the java call
if (( $# > 0 )); then
    args="$@"
fi

# Make the call
echo mvn exec:java -Dexec.mainClass=usna.twitter.attack.TwitterHandles -Dexec.args="$args"
mvn exec:java -Dexec.mainClass=usna.twitter.attack.TwitterHandles -Dexec.args="$args"
