# TOOLS.md  Tool & Skill Registry

## Global Guidelines
- Tools should be idempotent if possible.
- Destructive operations require SENTINEL approval.
- Major tool runs should write a short reflection into `brain/memory/reflections/`.

---

## Ranger Pi Tools (skills/ranger_pi)

### ranger_pi.ssh_exec
Description: Run a command on Raspberry Pi 4 via SSH.  
Inputs: host, user, command  
Outputs: stdout, stderr, exit_code  
Used by: RANGER, sometimes ATLAS.

### ranger_pi.transmission_control
Description: Add/pause/resume torrents via Transmission RPC.  
Inputs: action, magnet_link or id  
Outputs: JSON result  
Used by: RANGER.

### ranger_pi.media_librarian
Description: Move completed downloads into proper Plex folders and clean up.  
Inputs: source_dir, dest_dir, metadata  
Outputs: list of moved files  
Used by: RANGER.

---

## Forge Code Tools (skills/forge_code)

### forge_code.file_edit
Description: Read/modify/write files in this repo.  
Inputs: path, patch or instructions  
Outputs: diff summary  
Used by: FORGE.

### forge_code.docker_compose_manager
Description: Safely update `infra/docker-compose.yml`.  
Inputs: high-level change description  
Outputs: updated file + explanation  
Used by: FORGE.

---

## Scout Media Tools (skills/scout_media)

### scout_media.youtube_summary
Description: Fetch transcript and summarize YouTube videos.  
Inputs: url, desired_summary_length  
Outputs: markdown summary  
Used by: SCOUT, ATLAS.

### scout_media.feed_digest
Description: Digest RSS/Atom feeds into daily/weekly briefs.  
Inputs: feed_urls, time_range  
Outputs: bullet-point digest  
Used by: SCOUT.
