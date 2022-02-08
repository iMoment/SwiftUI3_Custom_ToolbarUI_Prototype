//
//  PopoverView.swift
//  ToolbarUI
//
//  Created by Stanley Pan on 2022/02/08.
//

import SwiftUI

// MARK: Extension for popover
extension View {
    func toolBarPopover<Content: View>(show: Binding<Bool>, @ViewBuilder content: @escaping () -> Content) -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                ZStack {
                    if show.wrappedValue {
                        content()
                            .padding()
                            .background(
                                Color.white
                                    .cornerRadius(15)
                            )
                            .padding(.horizontal, 35)
                            .offset(y: 55)
                            .offset(x: -20)
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

// Custom Arrow Shape
struct PopoverArrowShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            let pt1 = CGPoint(x: 0, y: 0)
            let pt2 = CGPoint(x: rect.width, y: 0)
            let pt3 = CGPoint(x: rect.width, y: rect.height)
            let pt4 = CGPoint(x: 0, y: rect.height)
            
            // Drawing Arcs
            path.move(to: pt4)
            
            path.addArc(tangent1End: pt1, tangent2End: pt2, radius: 15)
            path.addArc(tangent1End: pt2, tangent2End: pt3, radius: 15)
            path.addArc(tangent1End: pt3, tangent2End: pt4, radius: 15)
            path.addArc(tangent1End: pt4, tangent2End: pt1, radius: 15)
        }
    }
}
