//
//  HomeVC.swift
//  YellowBoy
//
//  Created by kid on 2023/2/24.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        
        
        settings.style.selectedBarBackgroundColor = UIColor(named: "Main")!
        settings.style.selectedBarHeight = 3
      //  settings.style.buttonBarMinimumLineSpacing = -10
     //   settings.style.buttonBarMinimumInteritemSpacing = 100

        settings.style.buttonBarItemBackgroundColor = UIColor.clear
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 14)
        settings.style.buttonBarItemLeftRightMargin = 8

        super.viewDidLoad()
        containerView.bounces = false
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }

            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
            

        }
        // Do any additional setup after loading the view.
    }
    

    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let kdiscoveryVC = storyboard!.instantiateViewController(identifier: KDiscoveryVCID)
        let kfollowVC = storyboard!.instantiateViewController(identifier: KFollowVCID)
        let knearbyVC = storyboard!.instantiateViewController(identifier: KNearbyVCID)
        
        return [kdiscoveryVC, kfollowVC, knearbyVC]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
