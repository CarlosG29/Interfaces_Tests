//
//  AppInterfazUITests.swift
//  AppInterfazUITests
//
//  Created by Carlos Eduardo Gurdian on 11/11/24.
//

import XCTest

final class AppInterfazUITests: XCTestCase {

    override func setUpWithError() throws {
        // Poner la configuración inicial antes de cada prueba
        continueAfterFailure = false

        // Lanza la aplicación antes de cada prueba
        XCUIApplication().launch()
    }

    override func tearDownWithError() throws {
        // Código para ejecutar después de cada prueba si es necesario
    }

    @MainActor
    func testLoginElementsExist() throws {
        let app = XCUIApplication()

        // Verifica que los elementos de la vista de Login existen
        XCTAssertTrue(app.textFields["Username"].exists, "El campo de Username no existe.")
        XCTAssertTrue(app.secureTextFields["Password"].exists, "El campo de Password no existe.")
        XCTAssertTrue(app.buttons["Login"].exists, "El botón de Login no existe.")
        XCTAssertTrue(app.buttons["Register"].exists, "El botón de Register no existe.")
    }

    @MainActor
    func testLoginElementsAreInteractable() throws {
        let app = XCUIApplication()

        // Verifica que los elementos de la vista de Login sean interactuables
        XCTAssertTrue(app.textFields["Username"].isHittable, "El campo de Username no es interactuable.")
        XCTAssertTrue(app.secureTextFields["Password"].isHittable, "El campo de Password no es interactuable.")
        XCTAssertTrue(app.buttons["Login"].isHittable, "El botón de Login no es interactuable.")
        XCTAssertTrue(app.buttons["Register"].isHittable, "El botón de Register no es interactuable.")
    }
    func testRegistroElementsExist() {
        let app = XCUIApplication()
        app.launch()

        // Navega a RegistroView desde LoginView
        app.buttons["Register"].tap()

        // Verifica que los elementos en RegistroView existen
        XCTAssertTrue(app.textFields["Name"].exists, "El campo de Name no existe.")
        XCTAssertTrue(app.textFields["User ID"].exists, "El campo de User ID no existe.")
        XCTAssertTrue(app.textFields["Phone"].exists, "El campo de Phone no existe.")
        XCTAssertTrue(app.secureTextFields["Password"].exists, "El campo de Password no existe.")
        XCTAssertTrue(app.secureTextFields["Repeat Password"].exists, "El campo de Repeat Password no existe.")
    }

    func testRegistroElementsAreInteractable() {
        let app = XCUIApplication()
        app.launch()

        // Navega a RegistroView desde LoginView
        app.buttons["Register"].tap()

        // Verifica que los elementos en RegistroView son interactuables
        XCTAssertTrue(app.textFields["Name"].isHittable, "El campo de Name no es interactuable.")
        XCTAssertTrue(app.textFields["User ID"].isHittable, "El campo de User ID no es interactuable.")
        XCTAssertTrue(app.textFields["Phone"].isHittable, "El campo de Phone no es interactuable.")
        XCTAssertTrue(app.secureTextFields["Password"].isHittable, "El campo de Password no es interactuable.")
        XCTAssertTrue(app.secureTextFields["Repeat Password"].isHittable, "El campo de Repeat Password no es interactuable.")
    }
    func testVistaPrincipalElementsExist() {
        let app = XCUIApplication()
        app.launch()

        // Navegar a VistaPrincipalView desde LoginView
        app.buttons["Login"].tap()

        // Verificar que la tabla principal existe
        XCTAssertTrue(app.tables.element.exists, "La tabla no existe en VistaPrincipalView.")
        
        // Verificar que al menos una celda está presente en la tabla
        XCTAssertTrue(app.tables.cells.count > 0, "No hay celdas en la tabla de VistaPrincipalView.")
    }


    func testVistaPrincipalCellsAreInteractable() {
        let app = XCUIApplication()
        app.launch()

        // Navegar a VistaPrincipalView desde LoginView
        app.buttons["Login"].tap()

        // Verificar que la primera y última celdas de la tabla son interactuables
        let firstCell = app.tables.cells.element(boundBy: 0)
        let lastCell = app.tables.cells.element(boundBy: app.tables.cells.count - 1)

        XCTAssertTrue(firstCell.isHittable, "La primera celda no es interactuable.")
        XCTAssertTrue(lastCell.isHittable, "La última celda no es interactuable.")
    }




}

