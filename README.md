# GPVideoPlayer

[![Version](https://img.shields.io/cocoapods/v/GPVideoPlayer.svg?style=flat)](https://cocoapods.org/pods/GPVideoPlayer)
[![License](https://img.shields.io/cocoapods/l/GPVideoPlayer.svg?style=flat)](https://cocoapods.org/pods/GPVideoPlayer)
[![Platform](https://img.shields.io/cocoapods/p/GPVideoPlayer.svg?style=flat)](https://cocoapods.org/pods/GPVideoPlayer)

## Overview
It is simple and easy to use video player with playback controls written in Swift.

- [x] Live video streaming from the given URL.
- [x] Playing a video available in the app bundle.
- [x] Optimized for playing multiple videos in a queue one after the other.
- [x] Playback video controls - volume, rewind, forward etc.
- [x] Integrated with full screen video mode.

## Requirements

- [x] Xcode 10.
- [x] Swift 4.2.
- [x] iOS 10 or higher.

## Installation

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate GPVideoPlayer into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
target 'sampleproj' do

  use_frameworks!
  pod 'GPVideoPlayer'
  
end
```

Then, run the following command:

```bash
$ pod install
```

## Usage

1. First import GPVideoPlayer in the file where you are going to use it, for example in a `UIViewController`.
```swift
import GPVideoPlayer
```

2. Create a GPVideoPlayer object using the view's bounds where you want to show the player and add it as a `subView`. 
```swift
if let player = GPVideoPlayer.initialize(with: self.view.bounds) {
    self.view.addSubview(player)
    //Player customization...
}
```
In the above example, I'm adding player to the `viewController's subView`.

3. Load the player with the URLs of the videos.
```swift
let url1 = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!
let videoFilePath = Bundle.main.path(forResource: "video", ofType: "mp4")
let url2 = URL(fileURLWithPath: videoFilePath!)
            
player.loadVideos(with: [url1, url2])
```

4. Additional customization parameters.
```swift
player.isToShowPlaybackControls = true
player.isMuted = true
```

5. Play the videos in player.
```swift
player.playVideo()
```

## Example

To run the example project, 

1. Clone the repo.
2. Open `GPVideoPlayer -> Example -> GPVideoPlayer.xcworkspace`
3. Run the project (cmd + R)

## License

GPVideoPlayer is available under the MIT license. See the LICENSE file for more info.
