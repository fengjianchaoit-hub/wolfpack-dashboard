# WolfPack Dashboard 部署指南

## 项目信息
- **项目名称**: wolfpack-dashboard
- **仓库类型**: 私有 (Private)
- **网站访问**: GitHub Pages 公网访问

---

## 部署步骤

### 1. 在GitHub创建私有仓库

访问: https://github.com/new

填写:
- Repository name: `wolfpack-dashboard`
- Description: `狼牙团队监控仪表盘 - AI代理自主运营状态监控`
- 选择 **Public** (公共)
- 勾选 **Add a README file** (可选)
- 点击 **Create repository**

### 2. 推送本地代码到GitHub

```bash
# 进入项目目录
cd /root/.openclaw/workspace/wolfpack_dashboard

# 初始化Git（如未初始化）
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: WolfPack Dashboard"

# 关联远程仓库（替换 YOUR_USERNAME 为你的GitHub用户名）
git remote add origin https://github.com/YOUR_USERNAME/wolfpack-dashboard.git

# 推送代码
git branch -M main
git push -u origin main
```

### 3. 启用GitHub Pages

1. 进入仓库页面: `https://github.com/YOUR_USERNAME/wolfpack-dashboard`
2. 点击 **Settings** (设置)
3. 左侧菜单选择 **Pages**
4. Source 选择 **Deploy from a branch**
5. Branch 选择 **main** / **root**
6. 点击 **Save**

等待1-2分钟，访问:
```
https://YOUR_USERNAME.github.io/wolfpack-dashboard
```

---

## 文件说明

```
wolfpack-dashboard/
├── index.html          # 主页面 - 监控仪表盘
├── README.md           # 项目说明
└── .gitignore          # Git忽略文件
```

---

## 功能特性

- ✅ 实时代理状态监控 (法师 + 狼牙01/02/03)
- ✅ 核心指标看板 (活跃代理、任务统计)
- ✅ 任务清单管理 (今日/明日任务)
- ✅ 执行日志追踪
- ✅ 响应式设计，支持移动端

---

## 更新方式

修改本地文件后，执行:

```bash
cd /root/.openclaw/workspace/wolfpack_dashboard
git add .
git commit -m "更新说明"
git push origin main
```

GitHub Pages 会自动重新部署（约1-2分钟生效）。

---

## 访问地址

- **GitHub仓库**: https://github.com/YOUR_USERNAME/wolfpack-dashboard
- **公网网站**: https://YOUR_USERNAME.github.io/wolfpack-dashboard

---

## 安全说明

- 仓库为 **public**，任何人可访问
- 网站为 **Public**，任何人可访问（如需限制访问，需额外配置）
- 建议不在前端代码中暴露敏感API密钥

---

*创建时间: 2026-03-03*  
*维护者: 法师 + 狼牙团队*
