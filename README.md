## 🚩 Build Ubuntu-22.04 docker image (for Windows)
```powershell
# 允許執行本機腳本
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
.\run-ansible.ps1
```
---

## 📁 目錄結構

```
ELK-Ansible/
├── docker-compose.yml
├── logstash/
│   └── pipeline/
│       └── logstash.conf
├── filebeat/
│   └── filebeat.yml
└── ansible/
    └── deploy.yml
```

## 🧷 資料集來源

[A Real-Time Dataset of Pond Water for Fish Farming using IoT devices](https://data.mendeley.com/datasets/hxd382z2fg/2)

---

## 🔧 執行方式

在 Ansible 控制的主機（本機）執行：

```bash
cd elk-ansible/   # 若使用上方的 docker container 就跳過這行
source .venv/Scripts/activate
ansible-playbook ansible/deploy.yml
```

---

## 📦 安裝必要套件（只需一次）

```bash
pip install ansible
ansible-galaxy collection install community.docker
```

> 📌 記得裝好 Docker Desktop 並確認可使用 `docker` / `docker compose` 指令！

---

## 🎯 成功後你可以看到：

* `http://localhost:9200` → Elasticsearch
* `http://localhost:5601` → Kibana
* Filebeat logs 會傳到 Logstash，再進 Elasticsearch 的 `filebeat-*` index
