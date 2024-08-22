//
//  PageViewController.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 11/08/24.
//

import UIKit

class PageViewController: UIPageViewController {
    
    /*
    private var pageControllers : [UIViewController] = []
    
    private let pageControllerOne : UIViewController = UIViewController()
    private let pageControllerTwo : UIViewController = UIViewController()
    
    private let pageControllerOneStoryboard = UIView()
    private let pageControllerTwoStoryboard = UIView()
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        pageControllers.append(pageControllerOneStoryboard)
        pageControllers.append(pageControllerTwoStoryboard)
        
        
        
        setViewControllers([pageControllerOneStoryboard], direction: .forward, animated: true, completion: nil)
        dataSource = self
        // Do any additional setup after loading the view.*/
    }

}
/*
extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        _ = UIPageViewController.NavigationOrientation.horizontal
        _ = UIPageViewController.TransitionStyle.scroll
        let index = pageControllers.firstIndex(of: viewController)
        if index == 0 {
            return pageControllers.last
        }
        return pageControllers.first
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        _ = UIPageViewController.NavigationOrientation.horizontal
        _ = UIPageViewController.TransitionStyle.scroll
        let index = pageControllers.firstIndex(of: viewController)
        if index == 0 {
            return pageControllers.last
        }
        return pageControllers.first
    }
    
    
}
*/
