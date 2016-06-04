# fastlane-plugin-carthage_cache `fastlane` Plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-carthage_cache)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with fastlane-plugin-carthage_cache, add it to your project by running:

```bash
fastlane add_plugin carthage_cache
```

## About carthage_cache

A tool that allows to cache Carthage/Build folder in Amazon S3.

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`. 

Download Carthage cache from Amazon S3

```yaml
carthage_cache_install(
  bucket: 'carthage-cache',
)
```

Publish Carthage cache to Amazon S3

```yaml
carthage_cache_publish(
  bucket: 'carthage-cache',
)
```

Where `carthage-cache` is your bucket name.

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

For some more detailed help with plugins problems, check out the [Plugins Troubleshooting](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/PluginsTroubleshooting.md) doc in the main `fastlane` repo.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Plugins.md) in the main `fastlane` repo.

## About `fastlane`

`fastlane` automates building, testing, and releasing your app for beta and app store distributions. To learn more about `fastlane`, check out [fastlane.tools](https://fastlane.tools).

## Acknowledgments

[Guido Marucci Blas](https://github.com/guidomb), who created the [carthage_cache](https://github.com/guidomb/carthage_cache) gem.
