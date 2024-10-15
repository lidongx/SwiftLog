
## SwiftLog

### 说明

- `SwiftLog` 基于https://github.com/delba/Log 更改

### 整合
- 通过Swift Package Manager在Package.swif添加依赖 
```swift
    dependencies: [
        .package(url: "https://github.com/lidongx/SwiftLog.git", .upToNextMajor(from: "1.0.0"))
    ]
```
- 使用CocoaPods
```ruby
use_frameworks!
pod 'SwiftLog'
```

## 全局调用
- 设置:
```swift
Log.enabled = true
Log.minLevel = .warning
Log.theme = .default
Log.enableAsset = true //开启错误Asert调试
```
Log.trace("Called!!!")
Log.debug("Who is self:", self)
Log.info(some, objects, here)
Log.warning(one, two, three, separator: " - ")
Log.error(error, terminator: "😱😱😱\n")
Log.firebase("message") 往firebase 发送crash log
```

### 局部调用

```swift
let log = Logger()

log.enabled = true
log.minLevel = .warning
log.theme = .default
log.enableAsset = true //开启错误Asert调试

log.trace("Called!!!")
log.debug("Who is self:", self)
log.info(some, objects, here)
log.warning(one, two, three, separator: " - ")
log.error(error, terminator: "😱😱😱\n")
log.firebase("message") 往firebase 发送crash log
```

<img src="https://raw.githubusercontent.com/delba/Log/assets/a.png">

#### Customization

- Create your own `Logger` by changing its `Theme` and/or `Formatter`.

A suggested way of doing it is by extending `Formatters` and `Themes`:

```swift
extension Formatters {
    static let detailed = Formatter("[%@] %@.%@:%@ %@: %@", [
        .date("yyyy-MM-dd HH:mm:ss.SSS"),
        .file(fullPath: false, fileExtension: false),
        .function,
        .line,
        .level,
        .message
    ])
}

extension Themes {
    static let tomorrowNight = Theme(
        trace:   "#C5C8C6",
        debug:   "#81A2BE",
        info:    "#B5BD68",
        warning: "#F0C674",
        error:   "#CC6666"
    )
}
```

```swift
let Log = Logger(formatter: .detailed, theme: .tomorrowNight)
```

<img src="https://raw.githubusercontent.com/delba/Log/assets/b.png">

**Tip:** `Log.format` and `Log.colors` can be useful to visually debug your logger.

Nothing prevents you from creating as many loggers as you want!

```swift
let basic = Logger(formatter: .default, theme: nil)
let short = Logger(
    formatter: Formatter("%@: %@", .level, .message),
    theme:     .tomorrowNightEighties,
    minLevel:  .info
)
```

<img src="https://raw.githubusercontent.com/delba/Log/assets/c.png">

#### Advanced

Include a custom `Block` component in your formatter to print its result in every log message: 

```swift
struct User {
    static func token() -> Int {
        return NSUserDefaults.standardUserDefaults.integerForKey("token")
    }
}
log.formatter = Formatter("[%@] %@: %@", .block(User.token), .level, .message)
```
