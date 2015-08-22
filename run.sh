#!/bin/sh
[ -e build/libs/PieSpy-*-all.jar ] || ./gradlew build
java -Djava.awt.headless=true -jar build/libs/PieSpy-*-all.jar ./config.ini
