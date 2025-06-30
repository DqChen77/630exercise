#!/bin/bash

mkdir -p ../results
DB_FILE="../results/strings.db"
rm -f "$DB_FILE"

sqlite3 "$DB_FILE" <<EOF
CREATE TABLE strings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    string_value TEXT UNIQUE NOT NULL
);
EOF

count=0
while [ $count -lt 1000 ]; do
    random_string=$(date +%s%N)
    if sqlite3 "$DB_FILE" "INSERT OR IGNORE INTO strings (string_value) VALUES ('$random_string');"; then
        count=$((count + 1))
    fi
done

total_count=$(sqlite3 "$DB_FILE" "SELECT COUNT(*) FROM strings;")
echo "total count: $total_count"