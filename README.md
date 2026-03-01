# 🛠 Recon Toolkit

A Modern Web Application & Bug Bounty Reconnaissance Framework built for Kali Linux.

This repository provides:

- Automated reconnaissance workflows
- Modular recon components
- Automatic tool installation
- Structured output handling
- Modern ProjectDiscovery-based stack
- Repeatable bug bounty–style pipelines

---

# 🎯 Purpose

This framework standardizes modern web reconnaissance by automating:

- Subdomain discovery
- DNS validation
- Live host detection
- Endpoint crawling
- JavaScript analysis
- Directory fuzzing
- Vulnerability template scanning
- Automated XSS detection

It is optimized for:

- Web Application Pentesting
- Bug Bounty Hunting

---

# ⚙️ Requirements

- Kali Linux
- Go 1.20+
- Internet connection (for first-time tool installation)

The framework automatically installs missing tools.

---

# 📂 Structure
```
recon-toolkit/
│
├── workflows/ → Main orchestration scripts
├── modules/ → Modular recon components
├── payloads/ → Attack payload collections
├── docs/ → Methodology and explanations
└── output/ → Recon results (auto-created)
```

---

# 🚀 Usage

From inside the repository:
```
cd workflows
bash full-recon.sh example.com
```

The framework will:

1. Check and install missing tools
2. Update Nuclei templates
3. Run passive enumeration
4. Validate subdomains
5. Crawl endpoints
6. Analyze JavaScript
7. Fuzz directories
8. Run vulnerability scans
9. Save structured output

Results are stored in:
```
output/example.com/
```

---

# 🧰 Tools Used (Modern Stack)

- subfinder
- chaos
- crt.sh parsing
- dnsx
- httpx
- katana
- gau
- uro
- jsleak
- ffuf
- nuclei
- dalfox

Legacy scraping-based tools were intentionally excluded for stability.

---

# 🧠 Design Philosophy

This framework focuses on:

- Stability over noise
- Automation over manual repetition
- Modular structure
- Modern bug bounty methodology
- Clean and reproducible workflows

Each module operates independently and can be reused separately.

---

# 🔐 Disclaimer

This toolkit is intended for:

- Authorized penetration testing
- Bug bounty programs
- Legal lab environments

The author is not responsible for misuse.

---

# 📈 Future Improvements

- Parallel execution optimization
- Resume capability
- Advanced parameter extraction
- Structured JSON reporting
- Slack/Discord webhook integration
- CI/CD integration

---

# 🏁 Goal

To maintain a professional-grade, repeatable, and efficient reconnaissance workflow aligned with modern web security practices.
