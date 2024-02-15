#!/usr/bin/bash
# Created Feb 15, 2023 by Abdelrahman.ayman@kuleuven.be

echo "This script should be sourced in your workspace directory."

git clone https://github.com/KULeuven-MICAS/snitch_cluster.git
cd snitch_cluster/
echo "Cloning the snitch cluster is done."

curl --proto '=https' --tlsv1.2 https://pulp-platform.github.io/bender/init -sSf | sh
echo "Bender installation is done."

./bender checkout
echo "Dependencies are cloned and checked out."

./bender script synopsys -t synthesis -t snitch_cluster > flist.tcl
echo "flist.tcl file is created as a one container for the snitch source code and all other dependencies."


