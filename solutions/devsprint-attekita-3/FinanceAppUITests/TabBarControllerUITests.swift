//
//  TabBarControllerUITests.swift
//  FinanceAppUITests
//
//  Created by Matheus Lenke on 20/05/22.
//

import XCTest

class TabBarControllerUITests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
        XCUIApplication().launch()
        continueAfterFailure = false
    }

    func test_ClickTabBarButton_and_ShowCorrectScreen() {
        let app = XCUIApplication()
        app.launch()
        
        let tabBar = app.tabBars["Tab Bar"]
        tabBar.buttons["Transfers"].tap()
        
        XCTAssert(app/*@START_MENU_TOKEN@*/.staticTexts["Transfer"]/*[[".buttons[\"Transfer\"].staticTexts[\"Transfer\"]",".staticTexts[\"Transfer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        
        tabBar.buttons["Home"].tap()
        
        XCTAssert(app.navigationBars["FinanceApp.HomeView"].buttons["Profile"].exists)
    }
}
