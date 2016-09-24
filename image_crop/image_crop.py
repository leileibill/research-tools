# This script monitors a folder and converts any ps eps and pdf files
# into png
# It uses ImageMagick library
import sys
import time
import os
import shutil
import subprocess

# Folder to monitor
watchdir = './'
contents = os.listdir(watchdir)
count = len(contents)
dirmtime = os.stat(watchdir).st_mtime

print count
print contents
print dirmtime
# For each 5 second period, check files and dates to see if there is any new
# files that have been added
while True:
    newmtime = os.stat(watchdir).st_mtime
    if newmtime != dirmtime:
        dirmtime = newmtime
        newcontents = os.listdir(watchdir)
        matches = [files for files in newcontents if ('.ps' in files) or ('.eps' in files) or ('.pdf' in files)]
        print matches
        for files in matches:
            try:
                fileName, fileExtension = os.path.splitext(files)
                subprocess.call(['C:\\Program Files\inkscape\inkscape', watchdir + files, '--export-pdf=' + watchdir + 'cropped/' + fileName + '.pdf','--export-area-drawing'])
                #shutil.copy(watchdir+files,watchdir+'processed/'+files)
                os.remove(watchdir+files)
            except IOError:
                f = open('Error_log', 'w')
                f.write('I/O error({0}): {1}'.format(e.errno, e.strerror))
                f.close();
                pass
            except WindowsError:
                f = open('Error_log', 'w')
                f.write('I/O error({0}): {1}'.format(e.errno, e.strerror))
                f.close();
                pass
    time.sleep(5)
