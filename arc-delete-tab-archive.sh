#!/bin/bash
LOCAL_STORABLE_ARCHIVE_ITEMS_PATH=$(dirname "${BASH_SOURCE[0]}")/StorableArchiveItems.json
REMOTE_STORABLE_ARCHIVE_ITEMS_PATH=~/Library/Application\ Support/Arc

# Overwrite tab archive
cp "$LOCAL_STORABLE_ARCHIVE_ITEMS_PATH" "$REMOTE_STORABLE_ARCHIVE_ITEMS_PATH"
