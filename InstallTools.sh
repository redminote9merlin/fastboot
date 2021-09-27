#!/data/data/com.termux/files/usr/bin/bash

directory="$(pwd)"
echo
echo -e "\e[93mPlease Wait install ADB & FastBoot Tools ."
echo
echo -e "\e[32m[*] \e[34mDownloading Adb..."
mkdir $PREFIX/tmp/adbtemp
downpath="$PREFIX/tmp/adbtemp"
wget https://github.com/MasterDevX/Termux-ADB/raw/master/bin/adb -P $downpath/ -q
echo -e "\e[32m[*] \e[34mDownloading fasboot..."
wget https://github.com/redminote9merlin/fastboot/raw/main/bin/adb.bin -P $downpath/ -q
wget https://github.com/redminote9merlin/fastboot/raw/main/bin/adb.bin-armeabi -P $downpath/ -q
wget https://github.com/redminote9merlin/fastboot/raw/main/bin/fastboot -P $downpath/ -q
wget https://github.com/redminote9merlin/fastboot/raw/main/bin/fastboot-armeabi -P $downpath/ -q
echo -e "\e[32m[*] \e[34mCopying files to bin..."
cp $downpath/* $PREFIX/bin
echo -e "\e[32m[*] \e[34mSetting execution permissions..."
files="$(ls $downpath)"
cd $PREFIX/bin
chmod +x $files
echo -e "\e[32m[*] \e[34mCreating workspace directory..."
cd $HOME
if [ ! -d "adbfiles" ]; then
  mkdir adbfiles
fi
echo -e "\e[32m[*] \e[34mCleaning up..."
cd $directory
rm -rf $downpath
rm -rf InstallTools.sh
echo
echo -e "\e[32mSuccessfully installed!\e[39m"
echo