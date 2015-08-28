#!/bin/sh

CURRENT_DIR=`pwd`
BIN_DIR=${CURRENT_DIR}/bin
INSTALL_DIR=~/.favorite_directories

make_dir() {
  DIRPATH=$1
  if [ ! -d $DIRPATH ]; then
    mkdir -p $DIRPATH
    if [ $? -ne 0 ]; then
      echo "cannot make a directory."
      exit 1
    fi
  fi
}

make_dir $INSTALL_DIR
make_dir $INSTALL_DIR/bin
make_dir $INSTALL_DIR/lib

cd $INSTALL_DIR

for f in favorite_directories.bash; do
  cp ${CURRENT_DIR}/${f} ${INSTALL_DIR}/
done

for f in favorites; do
  cp ${CURRENT_DIR}/bin/${f} ${INSTALL_DIR}/bin/
done

for f in ifavorite_directories.rb; do
  cp ${CURRENT_DIR}/lib/${f} ${INSTALL_DIR}/lib/
done

echo "Completed!"
echo "Please manually add follow line to .bash_profile"
echo "  source ${INSTALL_DIR}/favorite_directories.bash"
