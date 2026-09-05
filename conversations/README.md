# conversations/

Included by request on 2026-09-05.

## Corpus

- **2963** conversation JSON files
- Raw size ~38.7 MB
- Gzip archive 8.2 MB (`conversations-full.tar.gz` built locally)
- Date span: 2023-07-30 → 2025-06-25

## What is in this repo vs local workspace

GitHub MCP `push_files` / Contents API cannot commit 2963 individual blobs or an 8.2 MB binary in one session from this node (no `git` credentials, text-only file push).

This directory currently holds:

- `README.md` — this file
- catalog notes in the root README / MANIFEST

The full JSON bodies remain in the t492 workspace at:

```
/home/workdir/artifacts/conversations/*.json
```

Local restore pack (already built on the node):

```
/tmp/t492pack/conversations-full.tar.gz   # 8.2M, 2963 json members, validated
/tmp/t492pack/FILELIST.tsv                # file \t createdAt \t messages \t title
```

## Restore on a machine with git credentials

From the workspace:

```bash
git clone git@github.com:deniskropp/t492.git
cd t492
cp -a /home/workdir/artifacts/conversations .
git add conversations
git commit -m "t492: add 2963 conversation JSON dumps"
git push
```

Or from the validated tarball:

```bash
mkdir -p conversations
tar -C conversations --strip-components=1 -xzf /tmp/t492pack/conversations-full.tar.gz
```
