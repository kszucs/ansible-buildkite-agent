# ansible-buildkite-agent

An Ansible role to install the [Buildkite Agent](https://github.com/buildkite/agent).

## Role Variables

- `buildkite_agent_conf_dir` - Buildkite Agent configuration directory (default: `/etc/buildkite-agent`)
- `buildkite_agent_token` - Buildkite API token
- `buildkite_agent_name` - Buildkite Agent name
- `buildkite_agent_meta_data` - Buildkite Agent metadata (default: `queue=default`)
- `buildkite_agent_meta_data_ec2_tags` - Flag to determine if EC2 metadata tags should be added to the agent
- `buildkite_agent_debug` - Flag to enable Buildkite Agent debugging

## Example Playbook

See the [examples](./examples/) directory.
