# t492 — Assistants Persona Swarm Space (OCS Native)

Private ticket repo for the Assistants persona swarm, KickLang / OCS playbooks, and the conversation dump.

**Repo:** https://github.com/deniskropp/t492  
**Visibility:** private

## In repo now

- Playbook runtime: `KickLang-MetaPlaybook-v2.1-runtime.md`
- Persona seeds under `assistants/` (partial roster)
- `conversations/CATALOG.md` + `conversations/README.md` for the 2963-file dump
- `RESTORE.sh` — copy bodies from the workspace when git credentials exist

## Conversations

Included by request. Catalog is committed. Full JSON bodies (38.7 MB / 2963 files / 11878 messages, 2023-07-30 → 2025-06-25) live in the workspace and as a validated local tarball:

`/tmp/t492pack/conversations-full.tar.gz`

This node can create the private repo and push text files. It cannot `git push` 2963 blobs without a GitHub token in the sandbox.

## Still to copy with local git

```bash
git clone git@github.com:deniskropp/t492.git
cd t492
cp -a /home/workdir/artifacts/conversations .
cp -a /home/workdir/artifacts/assistants .
cp /home/workdir/artifacts/*.md .
git add -A && git commit -m "t492: complete playbooks, personas, conversations" && git push
```
