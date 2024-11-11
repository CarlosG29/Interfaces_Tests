//
//  CustomTableView.swift
//  PruebaInterfaz
//
//  Created by Carlos Eduardo Gurdian on 11/11/24.
//


import SwiftUI

struct CustomTableView: UIViewRepresentable {
    let items: [String]

    // Crear la instancia de UITableView
    func makeUIView(context: Context) -> UITableView {
        let tableView = UITableView()
        tableView.delegate = context.coordinator
        tableView.dataSource = context.coordinator
        return tableView
    }

    // Actualizar la vista
    func updateUIView(_ uiView: UITableView, context: Context) {
        uiView.reloadData()
    }

    // Coordinador para manejar eventos de UITableView
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UITableViewDelegate, UITableViewDataSource {
        var parent: CustomTableView

        init(_ parent: CustomTableView) {
            self.parent = parent
        }

        // Numero de filas en la sección
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return parent.items.count
        }

        // Configuración de la celda
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") ?? UITableViewCell(style: .default, reuseIdentifier: "Cell")
            cell.textLabel?.text = parent.items[indexPath.row]
            return cell
        }

        // Manejar la selección de celdas
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("Elemento seleccionado: \(parent.items[indexPath.row])")
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}
