
###
 # @Author: zhizhizheng
 # @Date: 2025-07-22 10:20:55
 # @LastEditors: zhizhizheng
 # @LastEditTime: 2025-07-22 11:34:32
 # @Description:
### 
cd image
sh build.sh
cd ..

docker-compose down -v  
docker-compose up -d