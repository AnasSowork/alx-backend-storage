#!/usr/bin/env python3
"""
This script provides statistics about Nginx logs stored in MongoDB.
"""
from pymongo import MongoClient


def log_stats():
    """
    Connect to MongoDB, retrieve statistics about Nginx logs, and print them.
    """
    # Connect to MongoDB
    client = MongoClient('mongodb://127.0.0.1:27017')
    db = client.logs
    collection = db.nginx

    # Number of documents in the collection
    count_logs = collection.count_documents({})
    print(f"{count_logs} logs")

    # Count by HTTP method
    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    print("Methods:")
    for method in methods:
        count_method = collection.count_documents({"method": method})
        print(f"\tmethod {method}: {count_method}")

    # Number of documents with method=GET and path=/status
    count_status_check = collection.count_documents({
        "method": "GET",
        "path": "/status"
    })
    print(f"{count_status_check} status check")

    # Top 10 most present IPs
    print("IPs:")
    pipeline = [
        {"$group": {"_id": "$ip", "count": {"$sum": 1}}},
        {"$sort": {"count": -1}},
        {"$limit": 10}
    ]
    top_ips = collection.aggregate(pipeline)
    for ip in top_ips:
        print(f"\t{ip['_id']}: {ip['count']}")


if __name__ == "__main__":
    log_stats()
