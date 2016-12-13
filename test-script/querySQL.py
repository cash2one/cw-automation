import os
items = os.listdir(".")
newlist = []
for names in items:
  if names.endswith(".txt"):
    newlist.append(names)
print newlist

#encoding=utf-8
#author: walker
#date: 2014-03-07
#summary: 深度遍历指定目录，并将子目录和文件名改为小写
#注意，此程序只针对windows，windows下文件（夹）名不区分大小写
import os
import os.path
import shutil
#读入指定目录并转换为绝对路径
rootdir = raw_input('root dir:\n')
rootdir = os.path.abspath(rootdir)
print('absolute root path:\n*** ' + rootdir + ' ***')
#先修改文件名
for parent, dirnames, filenames in os.walk(rootdir):
  for filename in filenames:
    pathfile = os.path.join(parent, filename)
    pathfileLower = os.path.join(parent, filename.lower())
    if pathfile == pathfileLower:  #如果文件名本身就是全小写
      continue
    print(pathfile + ' --> ' + pathfileLower)
    os.rename(pathfile, pathfileLower)
#后修改目录名，这里注意topdown参数。
#topdown决定遍历的顺序，如果topdown为True，则先列举top下的目录，然后是目录的目录，依次类推；
#反之，则先递归列举出最深层的子目录，然后是其兄弟目录，然后父目录。
#我们需要先修改深层的子目录
for parent, dirnames, filenames in os.walk(rootdir, topdown=False):
  for dirname in dirnames:
    pathdir = os.path.join(parent, dirname)
    pathdirLower = os.path.join(parent, dirname.lower())
    if pathdir == pathdirLower: #如果文件夹名本身就是全小写
      continue
    print(pathdir + ' --> ' + pathdirLower)
    os.rename(pathdir, pathdirLower)
