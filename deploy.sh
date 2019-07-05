aws cloudformation package \
--template-file Main.yaml \
--s3-bucket qltrail-lab-125-1542305571 \
--output-template-file packaged.yaml \
--region us-east-1 \
--profile awsstudent

aws cloudformation deploy \
--template-file packaged.yaml \
--stack-name FinalProjectV1 \
--s3-bucket qltrail-lab-125-1542305571 \
--capabilities CAPABILITY_IAM  \
--region us-east-1 \
--parameter-overrides KeyPair="qwikLABS-L125-93768" \
--profile awsstudent