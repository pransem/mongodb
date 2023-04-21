#!/bin/bash

# Get the current version from the schema collection
current_version=$(mongo --quiet myapp --eval "db.schema.findOne().version")

# Increment the version
next_version=$((current_version + 1))

# Apply the migration script
mongo myapp migrations/add_new_field_to_collection.sh

# Update the schema collection with the new version
mongo myapp --eval "db.schema.updateOne({}, { \$set: { version: ${next_version} } })"

