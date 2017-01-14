echo "############################"
echo "# Creating build container #"
echo "############################"
docker build . -t test-netcore-appveyor

echo "############################"
echo "# Running build container  #"
echo "############################"
docker run -it --name test-netcore-appveyor -v artifacts:/build/artifacts test-netcore-appveyor 
docker rm -f test-netcore-appveyor
docker rmi -f test-netcore-appveyor