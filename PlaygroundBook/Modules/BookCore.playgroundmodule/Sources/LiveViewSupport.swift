//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Provides supporting functions for setting up a live view.
//

import UIKit
import SwiftUI
import PlaygroundSupport

/// Instantiates a new instance of a SwiftUI live view. UIViewController PlaygroundLiveViewable protocol implemented in LiveViewController.swift
public func instantiateSwiftUILiveView() -> PlaygroundLiveViewable {
    
    /// Create a UIHostingController to add a SwiftUI View to UIKit, returns a UIViewController
    let hostingControllerSwiftUI = UIHostingController(rootView: PlaygroundView()) as UIViewController

    return hostingControllerSwiftUI
}

public struct PlaygroundView: View {
    
    public init() {}

    public var body: some View {
        Button(
            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
            label: {
            Text("SwiftUIViewController")
            }
        )
    }
}
