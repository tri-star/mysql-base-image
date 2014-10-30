CONTAINER=$1
USER=$(whoami)

if [ -z $CONTAINER ]; then
  echo "Usage $0 [CONTAINER ID or name]"
  exit
fi

sudo rm -rf ./src

sudo docker cp $CONTAINER:/usr/local/src ./
sudo chown -R $USER:$USER ./src
echo "Copying source files done."
