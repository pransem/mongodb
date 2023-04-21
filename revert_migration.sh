# Apply the migration script
mongo myapp migrations/remove_new_field_from_collection.sh

# Update the schema collection with the old version
mongo myapp --eval "db.schema.updateOne({}, { \$set: { version: 1 } })"

