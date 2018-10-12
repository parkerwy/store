rem
rem restores the state after finishing exercise 3
rem

echo "restoring the state AFTER exercise 3"

net stop "Datacap Taskmaster Server"
echo "delete Datacap\MGApp ..."
rmdir /s /q c:\datacap\mgapp
echo " done"

echo "restoring saved MGAapp and datacap.xml ..."
mkdir c:\datacap\MGApp
xcopy /S /I /Y "c:\Users\Administrator\Desktop\Jam2018 DCss\StateAfterExercise3\MGApp" c:\datacap\MGApp
xcopy /S /I /Y "c:\Users\Administrator\Desktop\Jam2018 DCss\StateAfterExercise3\datacap.xml" c:\datacap\datacap.xml
echo " done" 
net start "Datacap Taskmaster Server"

pause "press ENTER to continue"