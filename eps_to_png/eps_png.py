import sys
import time
import os
import shutil
import subprocess

watchdir = '//ad.uillinois.edu/engr/ece-power/Projects/pilawa-group/eps_to_png/'
contents = os.listdir(watchdir)
count = len(contents)
dirmtime = os.stat(watchdir).st_mtime

print count
print contents
print dirmtime
while True:
    newmtime = os.stat(watchdir).st_mtime
    if newmtime != dirmtime:
        dirmtime = newmtime
        newcontents = os.listdir(watchdir)
        matches = [files for files in newcontents if ('.eps' in files) or ('.pdf' in files)]
        print matches
        for files in matches:
            try:
                fileName, fileExtension = os.path.splitext(files)
                subprocess.call(['C:\\Program Files\ImageMagick-6.8.9-Q16\convert', '-density','300', watchdir + files,watchdir + fileName + '.png'])
                shutil.copy(watchdir+files,watchdir+'processed/'+files)
                os.remove(watchdir+files)
            except IOError:
                f = open('logfile', 'w')
                f.write('I/O error({0}): {1}'.format(e.errno, e.strerror))
                f.close();
                pass
    time.sleep(5)
