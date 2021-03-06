

import UIKit

/// 加载xib生成的ViewController
public protocol LoadStoryboardProtocol {}
extension UIViewController: LoadStoryboardProtocol {}
public extension LoadStoryboardProtocol where Self: UIViewController {
    
    static func wp_loadStoryboard(storyboardName: String? = nil) -> Self {
        var storyboard = UIStoryboard()
        if storyboardName == nil {
            storyboard = UIStoryboard(name: "\(self)", bundle: nil)
        }else {
            storyboard = UIStoryboard(name: storyboardName!, bundle: nil)
        }
        return storyboard.instantiateViewController(withIdentifier: "\(self)") as! Self
    }
}

/// 加载xib生成的UIView
public protocol LoadNibProtocol {}
extension UIView: LoadNibProtocol {}
public extension LoadNibProtocol where Self: UIView {
    
    static func wp_loadViewFromNib(name: String? = nil) -> Self {
        return Bundle.main.loadNibNamed(name ?? "\(self)", owner: nil, options: nil)?.last as! Self
    }
}

public extension UITableView {
    /// 注册xib中cell
    func wp_registerNibCell(cellName: String) {
        let cellNib = UINib(nibName: cellName, bundle: nil)
        register(cellNib, forCellReuseIdentifier: cellName)
    }
    
    /// 实例化cell
    func wp_dequeueReusableNibCell(cellId: String,
                                   indexPath: IndexPath) -> UITableViewCell {
        return dequeueReusableCell(withIdentifier: cellId, for: indexPath)
    }
}


public extension UICollectionView {
    
    /// 注册xib中cell
    func wp_registerNibCell(cellName: String) {
        let cellNib = UINib(nibName: cellName, bundle: nil)
        register(cellNib, forCellWithReuseIdentifier: cellName)
    }
    
    /// 实例化cell
    func wp_dequeueReusableNibCell(cellId: String,
                                   indexPath: IndexPath) -> UICollectionViewCell {
        return dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
    /// 注册页眉
    func wp_registerHeaderView(headerViewName: String) {
        let cellNib = UINib(nibName: headerViewName, bundle: nil)
        register(cellNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerViewName)
    }
    
    /// 获取页眉
    func wp_dequeueReusableHeaderView(headerViewName: String,
                                      indexPath: IndexPath) -> UICollectionReusableView {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerViewName, for: indexPath)
    }
    
    /// 注册页脚
    func wp_registerFooterView(footerViewName: String) {
        let cellNib = UINib(nibName: footerViewName, bundle: nil)
        register(cellNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerViewName)
    }
    
    /// 获取页脚
    func wp_dequeueReusableFooterView(footerViewName: String,
                                      indexPath: IndexPath) -> UICollectionReusableView {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerViewName, for: indexPath)
    }
}


