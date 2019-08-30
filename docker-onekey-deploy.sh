#备份官方yum源
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
#下载阿里云yum源
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
#下载Docker源
wget -O /etc/yum.repos.d/docker-ce.repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
#生成yum缓存
yum makecache
#安装docker
yum -y install docker-ce
#使用daocloud加速器
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://ef017c13.m.daocloud.io
#启动docker
systemctl start docker
#设置docker开机启动
systemctl enable docker
#进如git的docker项目目录
cd docker
#配置docker插件
 git clone  https://github.com/niuyutao/docker.git
 复制文件到root目录
 cp .bashrc_docker /root/
 echo "[ -f ~/.bashrc_docker ] && . ~/.bashrc_docker" >> ~/.bashrc; source ~/.bashrc
