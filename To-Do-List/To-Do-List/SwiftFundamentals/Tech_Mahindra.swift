//
//  Tech_Mahindra.swift
//  To-Do-List
//
//  Created by Mobile2 on 24/03/25.
//

import UIKit
//import XCTest
//
//// Write Test Cases for Netwrok Calls
//
//protocol APIServiceProtocol {
//    func fetchData(completion: @escaping (Result<String, Error>) -> Void )
//}
//
//
//class APIService: APIServiceProtocol {
//    func fetchData(completion: @escaping (Result<String, Error>) -> Void) {
//        let url = URL(string: "")!
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                completion(.failure(error))
//                return
//            }
//            completion(.success("Success Response"))
//        }.resume()
//    }
//}
//
//class ViewModel {
//    private let apiService: APIServiceProtocol
//    var responseText: String = ""
//    
//    init(apiService: APIServiceProtocol) {
//        self.apiService = apiService
//    }
//    
//    func loadData(completion: @escaping () -> Void) {
//        apiService.fetchData { [weak self] result in
//            switch result {
//            case .success(let data):
//                self?.responseText = data
//            case .failure:
//                self?.responseText = "Error"
//            }
//            completion()
//        }
//    }
//}
//
//// Create a Mock API Service for Testing
//class MockAPIService: APIServiceProtocol {
//    var shouldReturnError = false
//    
//    func fetchData(completion: @escaping (Result<String, Error>) -> Void) {
//        if shouldReturnError {
//            completion(.failure(NSError(domain: "", code: 500, userInfo: nil)))
//        } else {
//            completion(.success("Mock Data"))
//        }
//    }
//}
//
//class ViewModelTests: XCTestCase {
//    
//    var viewModel: ViewModel!
//    var mockAPIService: MockAPIService!
//    
//    override func setUp() {
//        super.setUp()
//        mockAPIService = MockAPIService()
//        viewModel = ViewModel(apiService: mockAPIService)
//    }
//    
//    override func tearDown() {
//        viewModel = nil
//        mockAPIService = nil
//        super.tearDown()
//    }
//    
//    func test_LoadData_Success() {
//        // Given
//        mockAPIService.shouldReturnError = false
//        
//        // When
//        let expectation = self.expectation(description: "Fetch Data")
//        viewModel.loadData {
//            expectation.fulfill()
//        }
//        waitForExpectations(timeout: 2, handler: nil)
//        
//        // Then
//        XCTAssertEqual(viewModel.responseText, "Mock Data")
//    }
//    
//    func test_LoadData_Failure() {
//        // Given
//        mockAPIService.shouldReturnError = true
//        
//        // When
//        let expectation = self.expectation(description: "Fetch Data Error")
//        viewModel.loadData {
//            expectation.fulfill()
//        }
//        waitForExpectations(timeout: 2, handler: nil)
//        
//        // Then
//        XCTAssertEqual(viewModel.responseText, "Error")
//    }
//}

// What is Static and Dynamic Dispatch
// How Swift is fast
// What is structural and non- Structural Concurrency
// What is Final keyword
// What is Protocol Component
// Difference Between Objective C and Swift
// What is SOILD Principle I - Stand For
// Explain Morden Cocurrency ?
// Explain of sync Morden Concurrency and Async Morden Concurreny ?
// What is Virtual Table in Swift ?
