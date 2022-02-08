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
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
