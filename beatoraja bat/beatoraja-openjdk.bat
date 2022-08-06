REM *** Set system-wide "_JAVA_OPTIONS" environment variable to use OpenGL pipeline (improved performance of > 30% potentially. Also use anti-aliasing for non-LR2 fonts, and finally allow Swing framework to utilize AA and GTKLookAndFeel for config window. ***
set _JAVA_OPTIONS='-Dsun.java2d.opengl=true -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel' -Dfile.encoding="UTF-8"
pushd %~dp0
start /abovenormal /wait /b jdk/bin/java -Xms4g -Xmx4g --module-path javafx-sdk/lib --add-modules=javafx.controls,javafx.fxml -XX:+UseShenandoahGC -XX:+ExplicitGCInvokesConcurrent -XX:+TieredCompilation -XX:+UseNUMA -XX:+AlwaysPreTouch -XX:-UsePerfData -XX:+UseThreadPriorities -XX:+ShowCodeDetailsInExceptionMessages -cp beatoraja.jar;ir/* bms.player.beatoraja.MainLoader
popd
