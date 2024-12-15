-- Ensure the replica is ready to sync with the primary
STOP SLAVE;
RESET SLAVE;
CHANGE MASTER TO
  MASTER_HOST='primary',
  MASTER_USER='repl_user',
  MASTER_PASSWORD='repl_password',
  MASTER_LOG_FILE='binlog.000004',
  MASTER_LOG_POS=157;
START SLAVE;

