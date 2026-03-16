# Medusa Bruteforce Lab

| [English](#english-version) | [Português](#versão-em-português) |
| :--- | :--- |


<a name="english"></a>
---
## English Version
...

Medusa Bruteforce Lab

Practical project demonstrating brute force attacks using Medusa against a vulnerable environment.

⚠️ This lab is for educational purposes only and should be executed only in controlled environments.
🎯 Objective

To demonstrate different types of authentication attacks using the Medusa tool in a vulnerable environment. The lab simulates attacks against multiple services to show how weak credentials can compromise systems.

The services tested in this lab were:

    FTP (Brute force)

    HTTP (DVWA web form)

    SMB (SMB authentication)

    SSH (Brute force)

💻 Environment Setup

    Attacker Machine: Kali Linux

    Vulnerable Machine: Metasploitable 2

    Target IP used: 192.168.56.102

📂 Project Structure
Plaintext

MEDUSA-BRUTEFORCE-LAB
│
├── images
│   ├── medusa_enum.png
│   ├── medusa_ftp_success.png
│   ├── medusa_http_success.png
│   ├── medusa_smb_shares-list.png
│   ├── medusa_smb.png
│   └── medusa_ssh_success.png
│
├── scripts
│   ├── medusa_ftp_attack.sh
│   ├── medusa_http_attack.sh
│   ├── medusa_smb_attack.sh
│   └── medusa_ssh_attack.sh
│
├── wordlists
│   ├── passwords.txt
│   └── users.txt
│
└── README.md

🔍 Initial Enumeration

Before executing the brute force attacks, an SMB enumeration step was performed to identify possible existing users on the system.

Command used:
Bash

enum4linux 192.168.56.102

Enumeration Result:

Identified User: msfadmin (This user was subsequently included in the users wordlist).
🚀 Performed Attacks
1. FTP Brute Force (Port 21)

    Script: scripts/medusa_ftp_attack.sh

    Result: Valid credentials found (msfadmin / msfadmin).

2. Web Form Brute Force (DVWA)

The attack uses the Medusa web-form module to automate logins on the DVWA application (/dvwa/login.php).

    Script: scripts/medusa_http_attack.sh

3. SMB Authentication (Port 445)

Medusa performs authentication attempts against the SMB service and enumerates shares.

    Script: scripts/medusa_smb_attack.sh

4. SSH Brute Force (Port 22)

Tests user and password combinations to obtain secure remote terminal access.

    Script: scripts/medusa_ssh_attack.sh

🛠️ Tool Used: Medusa

Medusa is a parallel, modular, and extremely fast brute force tool that supports various protocols such as FTP, SSH, SMB, HTTP, Telnet, MySQL, VNC, and RDP.

Its main advantage is efficiency when handling multiple simultaneous connections.
🛡️ Mitigation Recommendations

To prevent brute force attacks, the following is recommended:

    Password Policies: Use strong, complex passwords and avoid defaults.

    Active Protection: Implement Account Lockout policies and rate limiting.

    Secure Authentication: Use Multi-Factor Authentication (MFA) and cryptographic keys for SSH.

    Monitoring: Constantly analyze authentication logs to identify attack patterns.

⚖️ Legal Disclaimer

This project is for educational purposes only. All tests were conducted in a controlled environment. Never perform attacks against systems without explicit authorization.



<a name="português"></a>
## Versão em Português

---
# Medusa Bruteforce Lab

Projeto prático demonstrando ataques de força bruta utilizando **Medusa** contra um ambiente vulnerável.

⚠️ **Este laboratório é apenas para fins educacionais e deve ser executado somente em ambientes controlados.**

---

## 🎯 Objetivo

Demonstrar diferentes tipos de ataques de autenticação utilizando a ferramenta **Medusa** em um ambiente vulnerável. O laboratório simula ataques contra múltiplos serviços para demonstrar como credenciais fracas podem comprometer sistemas.

Os serviços testados neste laboratório foram:

* **FTP** (Força bruta)
* **HTTP** (Formulário web DVWA)
* **SMB** (Autenticação SMB)
* **SSH** (Força bruta)

---

## 💻 Ambiente Utilizado

* **Máquina atacante:** Kali Linux
* **Máquina vulnerável:** Metasploitable 2
* **IP alvo utilizado:** `192.168.56.102`

---

## 📂 Estrutura do Projeto

```text
MEDUSA-BRUTEFORCE-LAB
│
├── images
│   ├── medusa_enum.png
│   ├── medusa_ftp_success.png
│   ├── medusa_http_success.png
│   ├── medusa_smb_shares-list.png
│   ├── medusa_smb.png
│   └── medusa_ssh_success.png
│
├── scripts
│   ├── medusa_ftp_attack.sh
│   ├── medusa_http_attack.sh
│   ├── medusa_smb_attack.sh
│   └── medusa_ssh_attack.sh
│
├── wordlists
│   ├── passwords.txt
│   └── users.txt
│
└── README.md

```

---

## 🔍 Enumeração Inicial

Antes de executar os ataques de força bruta, foi realizada uma etapa de **enumeração SMB** para identificar possíveis usuários existentes no sistema.

**Comando utilizado:**

```bash
enum4linux 192.168.56.102

```

**Resultado da enumeração:**


**Usuário identificado:** `msfadmin` (Este usuário foi posteriormente incluído na wordlist de usuários).

---

## 🚀 Ataques Realizados

### 1. Força Bruta em FTP (Porta 21)

* **Script:** `scripts/medusa_ftp_attack.sh`
* **Resultado:** Credenciais válidas encontradas (`msfadmin` / `msfadmin`).


### 2. Força Bruta em Formulário Web (DVWA)

O ataque utiliza o módulo `web-form` para automatizar logins no DVWA.

* **Script:** `scripts/medusa_http_attack.sh`


### 3. Autenticação SMB (Porta 445)

O Medusa realiza tentativas contra o serviço SMB e enumera compartilhamentos.

* **Script:** `scripts/medusa_smb_attack.sh`


### 4. Força Bruta em SSH (Porta 22)

* **Script:** `scripts/medusa_ssh_attack.sh`


---

## 🛠️ Ferramenta Utilizada: Medusa

O **Medusa** é uma ferramenta de brute force paralela, modular e extremamente rápida que suporta diversos protocolos como FTP, SSH, SMB, HTTP, Telnet, MySQL, VNC e RDP.

---

## 🛡️ Recomendações de Mitigação

1. **Políticas de Senha:** Utilizar senhas fortes e complexas.
2. **Proteção Ativa:** Implementar bloqueio de conta (*Account Lockout*) e *rate limiting*.
3. **Autenticação Segura:** Uso de MFA (Multifator) e chaves criptográficas para SSH.
4. **Monitoramento:** Análise constante de logs de autenticação.

---

## ⚖️ Aviso Legal

Este projeto é exclusivamente **educacional**. Os testes foram realizados em ambiente controlado. **Nunca execute ataques contra sistemas sem autorização explícita.**