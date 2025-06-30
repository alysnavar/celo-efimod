@ECHO ON

set arch=efi64e
if [%1]==[] goto build
set arch=%1

:build
pushd cult
call build.bat %arch% release
popd
pushd sdk
call build.bat %arch% release
call buildsdk.bat %arch% release
popd
pushd celo
call build.bat %arch% release
popd
