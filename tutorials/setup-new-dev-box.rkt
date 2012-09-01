;dependencies
;  frc
;   download frc libraries and software
;   http://firstforge.wpi.edu/sf/frs/do/viewSummary/projects.wpilib/frs
;  cygwin
;   download http://www.cygwin.com/setup.exe
;   follow the instruction
;    be sure to download the following packages:
;     git
;     git-completion
;     gitk
;     openssh
;     python
;     make
;     gcc
;  git
;   browse to http://help.github.com/set-up-git-redirect
;     follow the instructions, they're pretty thorough
;       if you installed cygwin, use it in place of git-bash
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
;    after installing frc netbeans plugins, install 2012 updates
;      http://firstforge.wpi.edu/sf/frs/do/listReleases/projects.wpilib/frs.2012_java_update_for_frc
;        download from the link "2012JavaUpdate3077.zip" or latest available
;        follow the instructions in the "Description" section above that link
;  ucpp
;    homepage https://github.com/nikitakit/ucpp
;    dependencies
;      python2
;        browse to http://www.python.org/download/releases/2.7.2/
;          scroll down to the 'Download' section
;          download the appropriate installer
;      either of the following:
;        git bash
;          see git section above
;        cygwin
;          see cygwin section above
;    in a git bash terminal
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
;  cRIO imaging tool
;    labview's
;      browse to http://joule.ni.com/nidu/cds/view/p/id/2262/lang/en
;      click "FRC2011Utilities.zip"
;      erhs-53-hackers@googlegroups.com
;      eleanor53
;      labview run-time engine
;        browse to http://joule.ni.com/nidu/cds/view/p/id/1244/lang/en
;          download "LVRTE861f4std.exe"
;  driver station
;    browse to http://joule.ni.com/nidu/cds/view/p/id/2263/lang/en
;      click "FRC2011DriverStation2_27_11Update.zip"
;      erhs-53-hackers@googlegroups.com
;      eleanor53
;  FIRST Robotics Software 2011 - utilities update - windows
;    browse to http://joule.ni.com/nidu/cds/view/p/id/2262/lang/en
;      click "FRC2011Utilities.zip"
;      erhs-53-hackers@googlegroups.com
;      eleanor53
