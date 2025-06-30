@ECHO ON

pushd cult
call build.bat efi64 release
popd
pushd sdk
call build.bat efi64 release
call buildsdk.bat efi64 release
popd
pushd celo
call build.bat efi64 release
popd
