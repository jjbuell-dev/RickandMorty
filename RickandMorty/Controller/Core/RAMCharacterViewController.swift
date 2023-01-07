//
//
// RickandMorty
// 
// RAMCharacterViewController.swift
//
// Created by Royal Blue Software
// 


import UIKit

/// Controller to show and search for characters
final class RAMCharacterViewController: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RAMNetworkService.sharedInstance.execute(.listCharactersRequest, expecting: RAMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.pages))
                print("Page result count: "+String(model.results.count))
            case .failure(let error):
               print( String(describing: error))
            }
        }
    }
}
