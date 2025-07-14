# ☁️ Cloud-1: Automated Inception Deployment

Welcome to **Cloud-1**, a DevOps project inspired by 42's [Inception](https://github.com/42Paris/inception), but enhanced using modern infrastructure-as-code and cloud provisioning tools.

This repository showcases an **automated deployment of a WordPress-based infrastructure** with multiple services running in **Docker containers**, provisioned on **DigitalOcean** using **Terraform** and configured with **Ansible**.

---

## 📌 Project Overview

The goal of this project is to deploy a **WordPress blog** and its required services on a remote cloud instance using:

- Infrastructure-as-Code (IaC) for reproducible environments
- One container per process
- Fully automated provisioning and deployment

**Services deployed:**

- `WordPress` CMS
- `MySQL` database
- `phpMyAdmin` for DB management
- `Nginx` as a reverse proxy
- Managed with `Docker Compose`
- Infrastructure provisioned via `Terraform`
- Configuration and software setup via `Ansible`

---

## 🚀 Technologies Used

| Technology      | Purpose                              |
|-----------------|--------------------------------------|
| **Terraform**   | Provision DigitalOcean droplets       |
| **DigitalOcean**| Cloud hosting platform                |
| **Docker**      | Containerization                      |
| **Docker Compose** | Multi-container orchestration     |
| **Ansible**     | Server provisioning & configuration   |
| **Nginx**       | Reverse proxy                         |
| **phpMyAdmin**  | Database web interface                |
| **MySQL**       | SQL database backend                  |

---

## 🧠 Key Features

- **Fully automated infrastructure**: One command provisions the server and sets everything up.
- **1 process = 1 container**: Each service runs in an isolated container.
- **Persistent data**: WordPress content and database survive reboots.
- **No SSL required**: HTTP access only (for learning purposes).
- **Ansible + Terraform combo**: Clean separation of infra and configuration.

---

## 🛠️ Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/N1ghtm4reee/cloud-1.git
cd cloud-1
./run.sh
