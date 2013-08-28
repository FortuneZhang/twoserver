1. server1相当于我们自己的服务器，server2相当于微信的服务器

2. 启动server1服务器的命令 rails s
   启动server2服务器的命令 rails s 3001

3. server1的index页面会每3秒发一个请求，返回成功的状态页面跳转 
   server1的返回状态由server2来指定

4  server2 可以修改当前的状态 
