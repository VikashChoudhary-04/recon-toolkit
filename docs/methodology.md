# 🔍 Recon Methodology

- This document explains the structured reconnaissance approach used in this framework.

- The goal of reconnaissance is not to run tools — it is to understand the attack surface.

- This methodology follows a phased, layered approach where each step builds context for the next.

---

### 1️⃣ Passive Subdomain Enumeration

- Objective:
  - Discover as many subdomains as possible without interacting directly with the target infrastructure.

- Tools Used:
  - subfinder
  - chaos
  - gau (historical URLs)

- Why:
  - Passive recon reduces noise and avoids unnecessary detection. It helps build an initial map of exposed assets.

- Output:
  - subdomains.txt

---

### 2️⃣ DNS Validation

- Objective:
  - Validate discovered subdomains and resolve them to IP addresses.

- Tools Used:
  - dnsx

- Why:
  - Not all discovered subdomains are valid or active. Validation removes dead entries and improves accuracy for later stages.

---

### 3️⃣ Live Host Detection

- Objective:
  - Identify which validated subdomains are actively serving HTTP/S traffic.

- Tools Used:
  - httpx

- Why:
  - Only live hosts are relevant for web application testing. This stage narrows the attack surface to actionable targets.

- Output:
  - alive.txt

---

### 4️⃣ URL & Endpoint Collection

- Objective:
  - Discover historical and dynamically exposed endpoints.

- Tools Used:
  - gau
  - katana
  - uro

- Why:
  Endpoints represent potential injection points, IDOR targets, and logic flaws. Crawling expands visibility beyond the homepage.

- Output:
  - urls.txt

---

### 5️⃣ JavaScript Analysis

- Objective:
  - Extract hidden endpoints, secrets, and internal API references from JavaScript files.

- Tools Used:
  - jsleak

- Why:
  - Modern applications heavily rely on client-side logic. JavaScript files often expose internal paths and sensitive references.

- Output:
  - js-files.txt

---

### 6️⃣ Directory & Resource Fuzzing

- Objective:
  - Identify hidden directories, admin panels, backup files, and misconfigurations.

- Tools Used:
  - ffuf

- Why:
  - Not all resources are linked publicly. Fuzzing reveals hidden attack surfaces.

- Output:
  - directories.txt

---

### 7️⃣ Template-Based Vulnerability Scanning

- Objective:
  - Identify known misconfigurations and common vulnerabilities.

- Tools Used:
  - nuclei

- Why:
- Template scanning helps quickly identify high-confidence issues such as exposed panels, outdated components, or common CVEs.

- Output:
  - nuclei.txt

---

### 8️⃣ Automated XSS Detection

- Objective:
  - Identify potential reflected or stored XSS vectors.

- Tools Used:
  - dalfox

- Why:
  - Automation assists in identifying injection points but always requires manual verification.

- Output:
  - xss.txt

---

## ⚖️ Important Principles

- Automation supports testing — it does not replace understanding.

- Each phase:

  - Reduces noise
  - Increases clarity
  - Expands attack surface visibility
  - Feeds into manual testing and exploitation

- The framework is intentionally structured to reflect real-world web pentesting methodology rather than tool collection.

---

## 🎯 End Goal

- The objective of reconnaissance is:

  - To map the attack surface
  - To identify entry points
  - To prioritize high-value targets
  - To support manual exploitation and reporting

- Reconnaissance is preparation.  
- Exploitation is precision.
