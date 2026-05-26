# Complete Guide for Installing and Connecting to Snowflake via SnowSQL

This document covers the steps required to install the **SnowSQL** command-line tool, configure automated access, and establish a secure connection to Snowflake.

---

## Step 1: Install SnowSQL

1. Go to the official download page: [Snowflake SnowSQL Downloads](https://www.snowflake.com/en/developers/downloads/snowsql/).
2. Download the installer that best fits your operating system.
3. Complete the steps in the **Snowflake SnowSQL Setup Wizard**.

---

## Step 2: Configure Automatic Connections (Optional but Recommended)

To avoid typing your account, username, and password manually every time you connect, you can save your credentials in your local configuration file.

1. Open the SnowSQL configuration file located in your user directory: `~/.snowsql/config` (On Windows, this is typically found at `%USERPROFILE%\.snowsql\config`). Or double-click on the download file.
2. Locate or add the connection details and fill them out with your actual credentials:

```ini
accountname = XXXXX-XXXXX
username = XXXXX
password = YOUR_PASSWORD_HERE
