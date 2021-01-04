//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
import PlaygroundSupport

func say(_ message: String) {
    let page = PlaygroundPage.current
    if let proxy = page.liveView as? PlaygroundRemoteLiveViewProxy {
        proxy.send(.string(message))
    }
}

say("<#Knock, knock!#>")

let page = PlaygroundPage.current
let proxy = page.liveView as! PlaygroundRemoteLiveViewProxy

let message: PlaygroundValue = .boolean(true)
proxy.send(message)

let command: PlaygroundValue
command = .dictionary([
    "Command": .string("Echo"),
    "Message": .string("Hello!")
    ])
proxy.send(command)
