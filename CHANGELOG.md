# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Develop

* Added: macOS installation now creates a user to run the service as, optionally as an administrator.
## 4.1.0

* Add: macOS `buildkite_agent_brew_dir` to set where `brew` is installed.

## 4.0.0

* Fix: Windows user password handling + doc. This was regressed within `3.3.1` during e1d9460, we're really sorry about that.

## 3.3.1

* Fix: don't accidentally run homebrew with become, it refuses.
* Fix: correct permissions and ownership on macOS configuration file and environment hook.
* Add: `buildkite_agent_homebrew_tap_url` (to allow overriding with an ssh-based tap for reliability).

## 3.3.0

* Fix: don't update homebrew on macOS as part of installing, since this is potentially very slow.
* Add: make installing the binary be optional (`buildkite_agent_should_install_binary`), in case people (yes, improbable) elect to install it differently.

## 3.2.1

* Fix: all platforms will run `buildkite_agent_count` job-runners now, defaulting to `1`.
* Fix: macOS `buildkite_agent_executable` is correct for the homebrew install now.
* Fix: Debian - user is now explicitly placed into the user's group.

## 3.2.0

* Added: ability to create user (on Debian) with a specific UID.

## 3.1.1

* Fixed: systemd path to buildkite agent logs; needs to be a file, not a directory.

## 3.1.0

Add support for shims/scripts wrapping the `buildkite-agent` binary, instead of directly calling the binary.
This can be useful, for example, if you need to fetch your agent registration token from a secret store before running `buildkite-agent`.

If not using a shim/script, no changes are needed.
To use a shim instead of directly calling the `buildkite-agent` binary, point `buildkite_agent_executable`
to your shim, and `buildkite_agent_start_command` to your shim's args.

* Added `buildkite_agent_executable` option.
* Added `buildkite_agent_start_command` option.

<<<<<<< HEAD
## 3.0.0

Version bump for breaking change. This is the same as 2.2.1 with corrected meta/main.yml.

## 2.2.1

* fixes to ansible 2.9.0 updates.

## 2.2.0

* porting to support ansible 2.9.0.

## 2.1.0
=======
## 3.0.0: 2019-11-13

Version bump for breaking change. This is the same as 2.2.1 with corrected meta/main.yml.

## 2.2.1: 2019-11-12

* fixes to ansible 2.9.0 updates.

## 2.2.0: 2019-11-07

* porting to support ansible 2.9.0.

## 2.1.0: 2019-08-20
>>>>>>> create-macos-user

* `buildkite_agent_username` option for configuring the name of the user to run the service as.
* `buildkite_agent_user_description` option for configuring the description of the user to run the service as.

<<<<<<< HEAD
## 2.0.0
=======
## 2.0.0: 2019-08-11
>>>>>>> create-macos-user

* require ansible `2.8.x` for `win_user_profile` support.
* take care of `win_nssm` deprecations within ansible 2.8.x.

<<<<<<< HEAD
## 1.2.1
=======
## 1.2.1: 2019-04-25
>>>>>>> create-macos-user

* `buildkite_agent_nssm_exe` option.
* `buildkite_agent_tags_including_queue` option.

<<<<<<< HEAD
## 1.2.0
=======
## 1.2.0: 2019-03-16
>>>>>>> create-macos-user

### Added

* `buildkite_agent_allow_service_startup` option.
* `buildkite_agent_expose_secrets` option.
* `buildkite_agent_tags_from_gcp_labels` option.
* `buildkite_agent_start_parameters` option for Debian and Windows.
* Debian `buildkite_agent_systemd_override_template` option.
<<<<<<< HEAD
  * Related - stop using systemd _template_ unit file (because `buildkite_agent_start_parameters` and v3.6.0+ allow `--spawn` for multiple job-runners).

## 1.1.0
=======
    * Related - stop using systemd _template_ unit file (because `buildkite_agent_start_parameters` and v3.6.0+ allow `--spawn` for multiple job-runners).

## 1.1.0: 2018-12-11
>>>>>>> create-macos-user

### Added

* macOS support - #7
* Windows support - #6

<<<<<<< HEAD
## 1.0.0
=======
## 1.0.0: 2018-04-18
>>>>>>> create-macos-user

### Added

* Support for Buildkite Agent v3.
* Support for Ubuntu 16.04.

### Removed

* Remove support for Ubuntu 14.04.
* Remove support for Buildkite Agent v2.

## 0.1.0

* Initial release.
