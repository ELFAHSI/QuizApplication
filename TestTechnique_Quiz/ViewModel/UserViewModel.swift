//
//  UserViewModel.swift
//  TestTechnique_Quiz
//
//  Created by OUSSAMA BENNOUR EL FAHSI on 25/12/2022.
//


import Foundation
import Combine

public class UserViewModel: ObservableObject {
  // input
  @Published var username = ""

  // output
  @Published var usernameMessage = ""
  @Published var isValid = false

  private var cancellableSet: Set<AnyCancellable> = []
  
  private var isUsernameValidPublisher: AnyPublisher<Bool, Never> {
    $username
      .debounce(for: 0.8, scheduler: RunLoop.main)
      .removeDuplicates()
      .map { input in
        return input.count >= 3
      }
            .eraseToAnyPublisher()
      
  }
  

  
  init() {
    isUsernameValidPublisher
      .receive(on: RunLoop.main)
      .map { valid in
        valid ? "" : "User name must at least have 3 characters"
      }
      .assign(to: \.usernameMessage, on: self)
      .store(in: &cancellableSet)
    


  }

}

