[![Build Status](https://travis-ci.org/clappr/clappr-ios.svg?branch=master)](https://travis-ci.org/clappr/clappr-ios)

# Clappr for iOS

![image](https://cloud.githubusercontent.com/assets/1156242/16349649/54f233e2-3a30-11e6-98e4-42eb5284b730.png)

### Installation

The easiest way is through [CocoaPods](http://cocoapods.org). Simply add the dependency to your `Podfile` and then `pod install`:

```ruby
pod 'Clappr', '~> 0.4'
```

### Using the Player

##### Create
```swift
let options = [kSourceUrl : "http://clappr.io/highline.mp4"]
let player = Player(options: options)
```

##### Add it in your view

```swift
player.attachTo(yourView, controller: self)
```

##### Listen to Events

```swift
player.on(PlayerEvent.Play) { userInfo in
    print("on Play")
}
```

You can find public events on `PlayerEvents` enum and listed bellow:

* Ready
* Play
* Pause
* Stop
* EnterFullscreen
* ExitFullscreen
* Error: `userInfo` can contain the error that caused the event.

### Built-in Plugins

To add plugins parameters use the options parameter on constructor. Example:

```Swift
let options = [kSourceUrl : "http://clappr.io/highline.mp4", pluginParameter1: "value1", pluginParameter2: true]
let player = Player(options: options)
```
##### Source
Set the video source url with `kSourceUrl : "http://clappr.io/highline.mp4"`.

##### Poster
Define a poster by adding `kPosterUrl: "http://url/img.png"` on your options. It will appear before the video starts, disappear on play and go back when video finishes.

##### Playback not supported custom message
Add `kPlaybackNotSupportedMessage : 'Your custom message'` to define a custom message to be displayed for not supported videos.

##### AutoPlay
Add `kAutoPlay: true` if you want the video to play automatically.

##### Start At
Define a start position in seconds with `kStartAt : x`. Default is `0`.

##### Fullscreen
Define if video should start in fullscreen mode with `kFullscreen: true`. Default is `false`.
 
##### FullscreenDisabled
Add `kFullscreenDisabled: true` to disable fullscreen button. Default is `false`.

##### MimeType
Add `kMimeType: 'selected mimetype'` if you need to use a url without extension.

##### Media Control
Adding a custom media control is possible by informing the `Type` of your class via `kMediaControl : YourCustomControl.self`

### License

You can find it [here](https://github.com/clappr/clappr-ios/blob/master/LICENSE).


### Sponsor

[![image](https://cloud.githubusercontent.com/assets/244265/5900100/ef156258-a54b-11e4-9862-7e5851ed9b81.png)](http://globo.com)
