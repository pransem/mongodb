mongo --host 10.1.0.4 --port 27017 --username pranav --password Pa55w.rd@1234 myapp --eval 'db.schema.updateMany({}, { $set: { new_field: "default_value" } });'
