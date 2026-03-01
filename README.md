# 🛠 Recon Toolkit

- A structured Web Application Reconnaissance Framework built for Kali Linux.

- This project standardizes reconnaissance methodology for web application penetration testing and bug bounty workflows. It focuses on clarity, repeatability, and modern tooling rather than tool collection.

---

## 🎯 Purpose

- This toolkit exists to:

  - Standardize recon workflow
  - Automate repetitive enumeration steps
  - Organize findings cleanly
  - Support manual testing
  - Reflect professional methodology

- It is designed for:

  - Web Application Pentesting
  - Bug Bounty Hunting
  - Authorized Security Testing

---

## 🧱 Framework Structure
```
Recon-Toolkit/
│
├── workflows/
│ └── full-recon.sh
│
├── modules/
│ ├── passive.sh
│ ├── validation.sh
│ ├── crawl.sh
│ ├── fuzz.sh
│ └── scan.sh
│
├── docs/
│ └── methodology.md
│
├── output/
│
└── README.md
```

---

## 🔍 Recon Workflow (Methodology)

- The framework follows a structured approach:

  1. Passive Subdomain Enumeration  
  2. DNS Validation  
  3. Live Host Detection  
  4. URL & Endpoint Collection  
  5. JavaScript Analysis  
  6. Directory Fuzzing  
  7. Template-Based Vulnerability Scanning  
  8. Manual Review & Attack Path Identification  

- Each phase builds on the previous one to create a clear attack surface.

---

## 🧰 Tool Stack (Modern Web Focused)

- The framework uses a focused and modern web testing stack:

  - subfinder  
  - chaos  
  - dnsx  
  - httpx  
  - gau  
  - katana  
  - uro  
  - ffuf  
  - nuclei  
  - dalfox  

- Only tools relevant to web application reconnaissance are included.

---

## 🚀 Usage

- Run from the workflows directory:
  ```
  cd workflows
  bash full-recon.sh example.com
  ```

- Results are saved in:
  ```
  output/example.com/
  ```

---

## 📂 Output Structure

Example output directory:
```
output/example.com/
├── subdomains.txt
├── alive.txt
├── urls.txt
├── js-files.txt
├── directories.txt
├── nuclei.txt
└── xss.txt
```

- All results are structured and separated for easier analysis.

---

## 🧠 Design Philosophy

- This toolkit prioritizes:

  - Structured methodology
  - Clean output organization
  - Stability over excessive automation
  - Modern web-focused tooling
  - Support for manual analysis

- Automation assists testing — it does not replace understanding.

---

## 🔐 Disclaimer

- This project is intended for:

  - Authorized penetration testing
  - Bug bounty programs
  - Legal lab environments

- The author is not responsible for misuse.

---

## 📌 Goal

To maintain a clean, professional, and repeatable reconnaissance workflow aligned with junior-level web pentesting standards.
