Restore Moto X XT1053 back to stock
===================================

This is a collection of shell script, mfastboot, compiled for linux, and instructions
on how to reset your Moto X XT1053. Tested on Ubuntu 14.04.

Steps:

* Obtain original firmware .zip file. Search interwebs for
  "XT1053_TMO_RETAIL-US_4.4.4_KXA21.12-L1.29.1_2_cid9_CFC_1FF.xml.zip" file.
* Unzip all the content in the same folder as `return_to_stock.sh`
* Reboot into fastboot. To do that:
  - turn off the phone
  - press `Volume Down` and `Power` buttons for 5 seconds, and then release both.
* Once you see fastboot menu on the phone screen, connect your phone via USB cable to
  your computer. To double check everything works fine, run:

  ```
  sudo ./mfastboot getvar max-download-size
  ```

  It should respond with something like:

  ```
  max-download-size: 805306368
  finished. total time: 0.115s
  ```
* Run return `return_to_stock.sh` script. It will need to reboot into fastboot in the
  middle of the process - keep an eye on the 'Press ENTER...' prompt.
