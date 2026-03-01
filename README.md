# 🛠 Recon Toolkit

A structured Web Application & Bug Bounty Reconnaissance Framework built for Kali Linux.

This repository provides:

- Automated reconnaissance workflows
- Modular recon components
- Payload collections
- Documentation of methodology
- Repeatable enumeration pipelines

---

## 🎯 Purpose

This toolkit helps standardize:

- Subdomain discovery
- DNS validation
- Endpoint crawling
- JavaScript analysis
- Directory fuzzing
- Automated vulnerability scanning

It reflects a modern Web & Bug Bounty reconnaissance workflow.

---

## 📂 Structure

workflows/ → Orchestrator scripts  
modules/ → Modular recon components  
payloads/ → Tested payload collections  
docs/ → Methodology & reasoning  

---

## ⚙️ Requirements

Kali Linux with:

- sublist3r
- dnsx
- httpx
- gau
- chaos
- katana
- uro
- jsleak
- ffuf
- nuclei
- dalfox

---

## 🚀 Usage
```
cd workflows
chmod +x full-recon.sh
./full-recon.sh example.com
```

- Results are saved in:
```output/example.com/```

### Linux Execution Note

- After cloning the repository on Linux, make scripts executable:

```
chmod +x workflows/*.sh modules/*.sh
```

- Alternatively, run scripts using:

```
bash workflows/full-recon.sh example.com
```
---

## ⚠️ Disclaimer

- All tools and techniques are used strictly in authorized environments, labs, and legal security testing engagements.
