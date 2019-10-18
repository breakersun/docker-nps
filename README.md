# docker-nps

执行命令

docker run -d --name nps --net=host -v <本机conf目录>:/nps/conf breakersun/nps:latest

docker run -d --name nps --net=host -v <本机conf目录>:/nps/conf breakersun/nps:aarch64

运行前，请确认8284、80、8080端口没有被占用

web默认登陆密码123

其他具体配置在<本机conf目录>