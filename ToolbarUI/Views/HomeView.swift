//
//  HomeView.swift
//  ToolbarUI
//
//  Created by Stanley Pan on 2022/02/08.
//

import SwiftUI

struct HomeView: View {
    @State var showDatePicker: Bool = false
    @State var showPicker: Bool = false
    @State var show: Bool = false
    
    var body: some View {
        NavigationView {
            
            List {
                Toggle(isOn: $showPicker) {
                    Text("Show Picker")
                }
                
                Toggle(isOn: $showDatePicker) {
                    Text("Show Graphical Date Picker")
                }
            }
            .navigationTitle("Popovers")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        withAnimation {
                            show.toggle()
                        }
                    } label: {
                        Image(systemName: "slider.horizontal.below.square.fill.and.square")
                    }
                }
            }
        }
        .toolBarPopover(show: $show, placement: .trailing) {
            // MARK: Popover View
            DatePicker("", selection: .constant(Date()))
                .datePickerStyle(.wheel)
                .labelsHidden()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
