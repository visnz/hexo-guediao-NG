
https://github.com/visnz/viss 项目范例

# repo结构图
```sh
├─ Dockerfile           # [ 看这里 ] 描述了从repo生成博客后台文件，并打包的nginx的过程
├─ .drone.yml           # [ 看这里 ] 拉去本项目，并执行Dockerfile的程序，推送到registry
├─ docker-compose.yml   # [ 看这里 ] 描述了从registry拉取镜像到部署的配置
├─ _config.yml          # hexo的配置文件
├─ package.json         # hexo需要
├─ package-lock.json    # hexo需要
├─ source/posts         # 文章文件
│  └─ about.md
└─ themes               # 主题包
    └─ landscape-plus
```
