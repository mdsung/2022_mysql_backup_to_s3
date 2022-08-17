.PHONY: backup
backup:	aws_s3_backup.sh\
		backup/tomocube_label.sql
	bash $^

backup/tomocube_label.sql: mysql_backup.sh
	bash $< $@