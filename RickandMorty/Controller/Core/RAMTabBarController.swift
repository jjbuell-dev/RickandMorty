//
//
// RickandMorty
// 
// RAMTabBarController.swift
//
// Created by Royal Blue Software
// 


import UIKit

final class RAMTabBarController: UITabBarController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setUpTabs()
    }
    
    // MARK: - Helper Functions
    
    private func setUpTabs() {
        let characterViewController = RAMCharacterViewController()
        let locationsViewController = RAMLocationViewController()
        let episodesViewController = RAMEpisodeViewController()
        let settingsViewController = RAMSettingsViewController()
        
        characterViewController.navigationItem.largeTitleDisplayMode = .automatic
        locationsViewController.navigationItem.largeTitleDisplayMode = .automatic
        episodesViewController.navigationItem.largeTitleDisplayMode = .automatic
        settingsViewController.navigationItem.largeTitleDisplayMode = .automatic
        
        let navigationController1 = UINavigationController(rootViewController: characterViewController)
        let navigationController2 = UINavigationController(rootViewController: locationsViewController)
        let navigationController3 = UINavigationController(rootViewController: episodesViewController)
        let navigationController4 = UINavigationController(rootViewController: settingsViewController)
        
        // set tabBarItem
        
        navigationController1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        navigationController2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        navigationController3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        navigationController4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        // add large titles for each controller
        for navigation in [navigationController1, navigationController2, navigationController3, navigationController4] {
            navigation.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([navigationController1, navigationController2, navigationController3, navigationController4], animated: true)
    }
}
