# 📂 Marketing Agency Client Files Storage (CloudFormation)

This AWS CloudFormation template provisions a **secure, private, versioned S3 bucket** for storing marketing agency client files, along with two IAM groups for controlled access.

---

## 🚀 Features
- **S3 Bucket**
  - Private and secure (public access completely blocked).
  - Versioning enabled (track file history).
  - Tagged for purpose, department, and environment.

- **IAM Groups**
  - `MarketingTeam-ClientFiles` → Read, write, and list access.
  - `MarketingAdmin-ClientFiles` → Full S3 bucket administrative access.

- **Outputs**
  - Bucket name
  - Region
  - IAM group names
  - Next steps after deployment

---

## 📑 Resources Created
1. **S3 Bucket**:  
   - `marketing-agency-client-files-2024`

2. **IAM Groups**:  
   - `MarketingTeam-ClientFiles` (limited access)  
   - `MarketingAdmin-ClientFiles` (full access)  

---

## 🛠️ Deployment Instructions

### 1. Deploy via AWS Console
1. Go to **CloudFormation** in the AWS Console.
2. Click **Create stack → With new resources (standard)**.
3. Upload this template (`.yaml` file).
4. Give the stack a name (e.g., `MarketingClientFilesStack`).
5. Deploy the stack.

### 2. Deploy via AWS CLI
```bash
aws cloudformation create-stack \
  --stack-name MarketingClientFilesStack \
  --template-body file://client-files-storage.yaml \
  --capabilities CAPABILITY_NAMED_IAM
