//
//  PopoverView.swift
//  ToolbarUI
//
//  Created by Stanley Pan on 2022/02/08.
//

import SwiftUI

// MARK: Extension for popover
extension View {
    func toolBarPopover<Content: View>(show: Binding<Bool>, @ViewBuilder content: @escaping () -> Content) {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                ZStack {
                    if show.wrappedValue {
                        content()
                    }
                }, alignment: .topLeading
            )
    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
