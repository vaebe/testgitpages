#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 构建时先删除原有 docs 目录
#rm -rf ./packages/ccui/docs/.vitepress/dist

# 构建文档
#pnpm docs:build

# cd 到构建文档输出的目录下
#cd ./packages/ccui/docs/.vitepress/dist

# 创建 .gin 文件
#git init
# 添加文档目录下所有文件
git add -A
# 提交保存
git commit -m 'deploy'

# 强制更新到 gh-pages 目录如果没有则会进行创建
git push -f git@github.com:vaebe/testgitpages.git master:gh-pages

cd -
