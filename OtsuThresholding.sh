transformPath=./cmake-build-debug/otsuThresholding
folder=transformedImages
mkdir "$folder"
(
cd $folder
mkdir archivos
)
for file in archivos/*;
do
  newPath="$folder/${file}_20.nii"
  $transformPath $file $newPath 20
done
for file in archivos/*;
do
  newPath="$folder/${file}_50.nii"
  $transformPath $file $newPath 50
done
for file in archivos/*;
do
  newPath="$folder/${file}_100.nii"
  $transformPath $file $newPath 100
done
for file in archivos/*;
do
  newPath="$folder/${file}_180.nii"
  $transformPath $file $newPath 180
done