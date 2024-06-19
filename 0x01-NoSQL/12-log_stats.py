#!/usr/bin/env python3
"""
This script provides statistics about Nginx logs stored in MongoDB.
"""

from pymongo import MongoClient


def log_stats():
    """
    Connect to MongoDB, retrieve statistics about Nginx logs, and print them.
    """

    client = MongoClient('mongodb://127.0.0.1:27017')
    db = client.logs
    collection = db.nginx

    count_logs = collection.count_documents({})
    print(f"{count_logs} logs")

    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    print("Methods:")
    for method in methods:
        count_method = collection.count_documents({"method": method})
        print(f"\tmethod {method}: {count_method}")

    count_status_check = collection.count_documents({
        "method": "GET",
        "path": "/status"
    })
    print(f"{count_status_check} status check")


if __name__ == "__main__":
    log_stats()
