#!/bin/bash



echo "Restoring the 'anime' database..."
pg_restore -O -U sean -d anime /backup/anime.sql
echo "anime database restored"

echo "Restoring the 'checklist' database..."
pg_restore -O -U sean -d checklist /backup/checklist.sql
echo "checklist database restored"
