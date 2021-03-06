#此步骤是在安装caffe之后执行的
#caffe的安装路径是~/caffe-master

#主要问题：
#1.centos6.7的python是2.6，caffe需要python2.7
#2.boost需要安装python支持

###############1.anaconda##############
#centos6.7 使用的python2.6，python的一些包需要python2.7，此处存在问题
#故使用anaconda
#本文将anaconda安装到/opt/anaconda

#由于系统使用的是python2.6，不要修改/usr/bin/python的软链接和python的lib
#否则会出现一些未知错误，例如登出后无法进入桌面等


#python interface
cd ~/caffe-master
for req in $(cat python/requirements.txt); do
        sudo /opt/anaconda/bin/pip install $req;
done
make pycaffe
