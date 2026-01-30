# StartTech Infrastructure

## Repository Structure

- `terraform/` - Infrastructure as code (VPC, ALB, ASG, EC2, Redis)
- `frontend/` - React or static frontend code
- `backend/` - Node.js backend code
- `scripts/` - Deployment, health-check, and rollback scripts
- `monitoring/` - CloudWatch dashboards, alarms, and log queries
- `.github/workflows/` - CI/CD workflows for frontend, backend, and infra

## Deployment

### Infrastructure
```bash
./scripts/deploy-infrastructure.sh
