# Arc Browser Auto-Delete Archived Tabs

A script which deletes archived Arc tabs at regular intervals.

## Requirements
- macOS
- `cron` must be granted "Full Disk Access" ([See tutorial](https://osxdaily.com/2020/04/27/fix-cron-permissions-macos-full-disk-access/))

## Setup
1. Clone this repository
2. Run `./setup.sh`

## Manual Setup
1. Clone this repository
2. Run `crontab -e`
3. Add an entry for the script:
    ```sh
    # Delete archived Arc tabs every 5 minutes
    */5 * * * * <PATH_TO_REPOSITORY>/arc-delete-tab-archive.sh
    ```

## Notes
- Arc must be restarted in order for the archived tabs to disappear
- The default cron schedule is every 5 minutes. This can be adjusted in `setup.sh` (or with `crontab -e` after setup is complete)
- This script has only been tested with Arc `0.108.1` on MacOS Ventura (`13.3.1`)
- This script can be manually executed by running `./arc-delete-tab-archive.sh`
