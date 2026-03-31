# oss-audit-24BAI10279

## Student Details
- Name: Jimmy Singh
- Roll Number: 24BAI10279
- Course: Open Source Software
- Chosen Software: Git

## Repository Structure
oss-audit-[rollnumber]/
├── script1.sh
├── script2.sh
├── script3.sh
├── script4.sh
├── script5.sh
└── README.md

## Scripts

### script1.sh — System Identity Report
Displays a welcome screen showing the Linux distribution, kernel version, current user, home directory, uptime, date and time, and the license covering the OS.

**Run with:**
```bash
chmod +x script1.sh
./script1.sh
```

### script2.sh — FOSS Package Inspector
Checks whether Git is installed on the system, displays its version, and prints a philosophy note about the package using a case statement.

**Run with:**
```bash
chmod +x script2.sh
./script2.sh
```

### script3.sh — Disk and Permission Auditor
Loops through key system directories and reports the permissions, owner, and disk usage of each one. Also checks for the Git config file in the home directory.

**Run with:**
```bash
chmod +x script3.sh
./script3.sh
```

### script4.sh — Log File Analyzer
Reads a log file line by line, counts how many lines contain a given keyword, and prints the last 5 matching lines. Defaults to searching for the keyword error if none is provided.

**Run with:**
```bash
chmod +x script4.sh
./script4.sh /var/log/syslog error
```

### script5.sh — Open Source Manifesto Generator
Asks the user three interactive questions and generates a personalised open source philosophy statement, saving it to a text file named after the current user.

**Run with:**
```bash
chmod +x script5.sh
./script5.sh
```

## Dependencies
- Bash (pre-installed on Ubuntu)
- Git (install with: sudo apt install git)
- Standard Linux utilities: uname, whoami, uptime, du, grep, date, dpkg

## How to Run
Clone the repository on your Linux machine and run any script from the terminal after giving it execute permission:
```bash
git clone https://github.com/yourusername/oss-audit-24BAI10279
cd oss-audit-24BAI10279
chmod +x script1.sh
./script1.sh
```

## Notes
- All scripts are written in Bash and tested on Ubuntu
- Script 4 requires a valid log file path as an argument
- Script 5 saves output to a .txt file in the same directory