//
//  VistaPrincipalView.swift
//  PruebaInterfaz
//
//  Created by Carlos Eduardo Gurdian on 10/11/24.
//

import SwiftUI

struct VistaPrincipalView: View {
    let items = ["Elemento 1", "Elemento 2", "Elemento 3", "Elemento 4", "Elemento 5"]

    var body: some View {
        NavigationView {
            CustomTableView(items: items)
                .navigationTitle("Vista Principal")
        }
    }
}


