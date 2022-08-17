# Backup MySQL with AWS s3

- Author: MinDong Sung
- Date: 2022-08-17

---

## Objective

- Backup MySQL database with AWS S3

## Prerequisites

- AWS CLI

## Process

1. AWS CLI configure
2. .env file configure (MYSQL, AWS configurations)

   - need to fill up `.env_template` file and rename to `.env`

   ```
   MYSQL_HOST=
   MYSQL_PORT=
   MYSQL_DB=
   MYSQL_USERNAME=
   MYSQL_PASSWORD=

   S3_BUCKET=
   ```

3. Create `backup` folder
   ```
   mkdir backup
   ```
4. Backup mysql database
   ```
   make backup
   ```
