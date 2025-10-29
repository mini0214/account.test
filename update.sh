#!/bin/bash
DATE=$(date +"%H%M")
sed -i "s/<title>零用金支出帳簿.*<\/title>/<title>零用金支出帳簿${DATE}<\/title>/g" index.html
git add index.html
git commit -m "update ${DATE}"
git push
echo "✅ 已更新版本：${DATE}"
