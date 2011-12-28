;dependencies
;  frc
;   download frc libraries and software
;   http://firstforge.wpi.edu/sf/frs/do/viewSummary/projects.wpilib/frs
;  git
;   browse to http://help.github.com/set-up-git-redirect
;     follow the instructions, they're pretty thorough
;  robotpy
;    in a terminal, like gnome-terminal or git bash aka msysgit
;      mkdir -p ~/opt
;      cd ~/opt
;      git clone https://github.com/robotpy/robotpy.git
;  java
;    download and install java
;      http://java.com/
;        click "Free Java Download"
;    download and install jdk
;      http://java.sun.com/javase/downloads
;        click "Download" above "Java Platform (JDK) 7u2"
;        click the installer appropriate for your system (probably windows x64)
;    download netbeans
;      ms windows
;        browse to http://netbeans.org/downloads/start.html?platform=windows&lang=en&option=javase
;      mac
;        browse to http://netbeans.org/downloads/start.html?platform=macosx&lang=en&option=javase
;      debian-based distros, like ubuntu
;        in a terminal, like gnome-terminal
;          sudo apt-get install -y netbeans
;    alternatively download and install netbeans & jdk together
;      ms windows
;        browse to http://www.oracle.com/technetwork/java/javase/downloads/index.html
;    after installing netbeans install netbeans frc plugin
;      browse to http://firstforge.wpi.edu/sf/go/doc1199?nav=1
;        download from the link "Java Getting Started Guide"
;          follow the instructions at the bottom of page 4
;          the section labeled "Installing the plugins from the update site"
;  ucpp
;    homepage https://github.com/nikitakit/ucpp
;    dependencies
;      python2
;        browse to http://www.python.org/download/releases/2.7.2/
;          scroll down to the 'Download' section
;          download the appropriate installer
;    in a terminal
;      mkdir -p ~/opt
;      cd ~/opt
;      git clone https://github.com/nikitakit/ucpp.git
;      export PATH="${PATH}:${HOME}/opt/ucpp/ucpp"
;      echo "PATH=\"\${PATH}:\${HOME}/opt/ucpp/ucpp\"" >> ~/.bashrc
;      ucpp setup -t 53 # this takes a while
;    browse to http://firstforge.wpi.edu/sf/go/doc1197?nav=1
;      download from the link "C++ Getting Started Guide"
;  labview
;    2011
;      grab the install cd from george
;    2012
;      ?
