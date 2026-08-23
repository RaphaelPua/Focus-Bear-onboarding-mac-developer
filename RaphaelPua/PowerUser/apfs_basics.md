# APFS Structure Basics

## What is APFS?

- APFS (Apple File System): is the file system used by modern versions of macOS. It was designed by Apple and is optimised for flash and SSD storage.

APFS provides features such as:

- Space sharing between volumes
- Snapshots
- Encryption
- Cloning
- Improved storage management
- Support for SSD and flash storage

## Basic APFS Structure

A simplified view of an APFS-formatted Mac is:

```text
Physical SSD
│
└── APFS Container
    │
    ├── Macintosh HD
    │   └── macOS System Files
    │
    ├── Macintosh HD - Data
    │   └── User Files & Applications
    │
    ├── Preboot
    │   └── Boot-related Files
    │
    ├── Recovery
    │   └── macOS Recovery Environment
    │
    └── VM
        └── Virtual Memory / Swap Data
```

> The exact volume names and structure can vary depending on the macOS version and how the Mac is configured.

## APFS Container

An **APFS container** is a storage area on a physical disk that can contain multiple APFS volumes.

Unlike traditional partitions where each partition has a fixed amount of space, APFS volumes inside the same container can **share available space**.

For example:

```text
APFS Container
│
├── Volume A ─── uses 100 GB
├── Volume B ─── uses 50 GB
└── Volume C ─── uses 20 GB

Available space is shared between the volumes.
```

This makes storage management more flexible.

## APFS Volumes

An APFS container can contain multiple volumes.

On a typical modern macOS installation, I may see volumes such as:

- **Macintosh HD** — contains the macOS system files.
- **Macintosh HD - Data** — contains user data and writable files.
- **Preboot** — contains files required to boot macOS.
- **Recovery** — contains the macOS Recovery environment.
- **VM** — used for virtual memory and swap.

The system and data volumes are separated to help protect the operating system while still allowing user data to be modified.

## Space Sharing

One of the useful features of APFS is **space sharing**.

Multiple APFS volumes within the same container can dynamically use available storage.

For example:

```text
APFS Container: 500 GB
│
├── System Volume
│   └── Uses 20 GB
│
├── Data Volume
│   └── Uses 150 GB
│
└── Remaining Space
    └── 330 GB available to the container
```

The volumes do not necessarily need to have permanently allocated amounts of storage.

## Snapshots

APFS supports **snapshots**, which capture the state of a file system at a particular point in time.

Snapshots can be useful for:

- System updates
- Backup systems
- Recovery
- Reverting changes

For example:

```text
Current File System
       │
       ├── Snapshot 1
       │   └── Earlier system state
       │
       └── Current State
```

macOS can use APFS snapshots as part of its system update and recovery mechanisms.

## Encryption

APFS also supports encryption and integrates with macOS security features such as **FileVault**.

Encryption helps protect data stored on the Mac if the physical storage device is accessed without authorisation.

## Cloning

APFS supports **clones**, which allow files or directories to be duplicated efficiently without immediately creating a completely separate copy of all the underlying data.

This can reduce unnecessary storage usage when working with duplicated files.

## Why APFS Matters for a Developer

Understanding APFS is useful as a Mac developer because applications interact with the file system regularly.

Knowledge of APFS can help me understand:

- Where application and system files are stored.
- How macOS manages storage.
- Why multiple volumes can appear in Disk Utility.
- How snapshots can affect available storage.
- How encryption protects data.
- How file system behaviour can affect applications.

It is also useful when troubleshooting storage-related problems or investigating where application data is located.

## Checking APFS on My Mac

I can use **Disk Utility** to view the storage structure graphically.

I can also use Terminal:

```bash
diskutil list
```

This displays information about the disks, partitions, containers, and volumes on my Mac.

To view APFS-specific information, I can use:

```bash
diskutil apfs list
```

This provides more detailed information about APFS containers and volumes.

## Reflection

- I learned that APFS supports features such as snapshots, encryption, and cloning, which help macOS with recovery, security, and efficient storage management.

- As a developer, understanding this structure should help me troubleshoot storage-related issues and better understand how macOS manages application and system data.