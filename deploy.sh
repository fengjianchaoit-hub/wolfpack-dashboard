#!/bin/bash
# WolfPack Dashboard 部署脚本

echo "🐺 WolfPack Dashboard 部署脚本"
echo "================================"
echo ""

# 检查GitHub用户名
if [ -z "$1" ]; then
    echo "用法: ./deploy.sh YOUR_GITHUB_USERNAME"
    echo "示例: ./deploy.sh myusername"
    exit 1
fi

GITHUB_USER=$1
REPO_NAME="wolfpack-dashboard"

echo "步骤1: 检查GitHub仓库..."
echo "请确保已在GitHub创建私有仓库: https://github.com/new"
echo "仓库名: $REPO_NAME"
echo ""
read -p "按Enter继续..."

echo ""
echo "步骤2: 配置Git远程仓库..."
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"

echo ""
echo "步骤3: 推送到GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "================================"
echo "✅ 代码已推送到GitHub!"
echo ""
echo "下一步: 启用GitHub Pages"
echo "1. 访问: https://github.com/$GITHUB_USER/$REPO_NAME/settings/pages"
echo "2. Source选择: Deploy from a branch"
echo "3. Branch选择: main / root"
echo "4. 点击Save"
echo ""
echo "等待1-2分钟后，访问:"
echo "🌐 https://$GITHUB_USER.github.io/$REPO_NAME"
echo "================================"