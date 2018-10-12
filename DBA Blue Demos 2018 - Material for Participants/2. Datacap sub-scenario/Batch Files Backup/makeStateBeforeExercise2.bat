rem
rem cleans the Datacap directory to the state before starting finishing exercise 2 
rem

echo "restoring the state BEFORE exercise 2"

net stop "Datacap Taskmaster Server"
echo "delete Datacap\MGApp ..."
rmdir /s /q c:\datacap\mgapp
echo " done"

echo "restoring saved MGAapp and datacap.xml ..."
xcopy /S /I /Y "c:\Users\Administrator\Desktop\Jam2018 DCss\StateBeforeExercise2\datacap.xml" c:\datacap\datacap.xml
echo " done" 
net start "Datacap Taskmaster Server"

pause "press ENTER to continue"
