echo "Removing old API version ..."
rm -rf generated
mkdir "generated"

echo "Building code ..."
docker-compose up dartApiCodegen

echo "Generating code ..."
cd generated
fvm flutter pub get
fvm flutter pub run build_runner build --delete-conflicting-outputs