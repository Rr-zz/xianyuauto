hSET device=%1
SET account=%2
SET password=%3


adb -s %device% install app-debug.apk 
adb -s %device% install app-debug-androidTest.apk 
adb -s %device% shell am instrument -w -r   -e debug false -e account %account% -e password %password% -e class 'xiaozhang.testuiautomator.UiautomatorMainActivityTest#testAutoXianyuCheck' xiaozhang.testuiautomator.test/android.support.test.runner.AndroidJUnitRunner