//
//  DismissableViewScreen.swift
//  Demo
//
//  Created by Daniel Saidi on 2020-11-27.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import SwiftUI

struct DismissableViewScreen: View, DismissableView {
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        DemoList("DismissableView") {
            Section {
                DemoListButton("Dismiss this screen", .dismiss, dismiss)
            }
        }
    }
}

struct DismissableViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        DismissableViewScreen()
    }
}
