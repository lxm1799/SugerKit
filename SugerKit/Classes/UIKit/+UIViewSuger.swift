//
//  UIViewSuger.swift
//  UIView的语法糖


import UIKit


//MARK: -生成快捷view

extension UIView {
    ///生成UIView
    public static func getView(color:UIColor? = .clear) -> UIView {
        let view = UIView.init()
            .set(backgroundColor: color)
            .set(clipsToBounds: true)
        return view
    }

    ///生成UIImageView
    public static func getImageView(img:String? = nil) -> UIImageView {
        let view = UIImageView.init()
            .set(clipsToBounds: true)
        if let imgStr = img{
            view.image = UIImage.init(named: imgStr)
        }
        return view
    }

    ///生成UILabel
    public static func getLab(font:UIFont?,textColor:UIColor?) -> UILabel {
        let view = UILabel.init()
            .set(font: font)
            .set(textColor: textColor)
        return view
    }

    ///生成文字类型的UIButton
    public static func getButton(title:String?,titleColor:UIColor?,font:UIFont) -> UIButton {
        let view = UIButton.init(type: .custom)
            .set(titleColor: titleColor, for: .normal)
            .set(title: title, for: .normal)
            .set(font: font)
        return view
    }

    ///生成icon类型的UIButton
    public static func getButton(img:String?,selectImg:String?) -> UIButton {
        let view = UIButton.init(type: .custom)
        if let imgStr = img {
            view.setImage(UIImage.init(named: imgStr), for: .normal)
        }
        if let selectImgStr = selectImg {
            view.setImage(UIImage.init(named: selectImgStr), for: .selected)
        }
        return view
    }
}



//MARK: -UIView的语法糖

//MARK: -UIView的基本属性
extension UIView {
    

    ///设置frame
    @discardableResult
    open func set(frame: CGRect) -> Self {
        self.frame = frame
        return self
    }
    
    ///设置背景色
    @discardableResult
    open func set(backgroundColor: UIColor?) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }
    
    ///设置isUserInteractionEnabled
    @discardableResult
    open func set(isUserInteractionEnabled: Bool?) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled ?? true
        return self
    }
    

    ///设置clipsToBounds
    @discardableResult
    open func set(clipsToBounds: Bool) -> Self {
        
            self.clipsToBounds = clipsToBounds
        
        return self
    }
    
    ///设置cornerRadius
    @discardableResult
    open func set(layerCornerRadius: CGFloat?) -> Self {
        
        self.layer.cornerRadius = layerCornerRadius ?? 0
        
        return self
    }
    
    ///设置borderWidth
    @discardableResult
    open func set(layerBorderWidth: CGFloat?) -> Self {
        
            self.layer.borderWidth = layerBorderWidth ?? 0
        
        return self
    }
    
    ///设置borderColor
    @discardableResult
    open func set(layerBorderColor: UIColor?) -> Self {
        
            self.layer.borderColor = layerBorderColor?.cgColor
        
        return self
    }
    
    ///设置alpha
    @discardableResult
    open func set(alpha: CGFloat?) -> Self {
        
            self.alpha = alpha ?? 1.0
        
        return self
    }
    
    ///设置hidden
    @discardableResult
    open func set(hidden: Bool?) -> Self {
        
            self.isHidden = hidden ?? false
        
        return self
    }
    
    ///添加UITapGestureRecognizer
    @discardableResult
    open func set(tapGes selector:Selector, target: Any) -> Self {
        self.isUserInteractionEnabled = true
        let tapGes = UITapGestureRecognizer.init(target: target, action: selector)
        tapGes.numberOfTouchesRequired = 1
        self.addGestureRecognizer(tapGes)
        
        return self
    }
    
}


//MARK: -UILabel的基本属性
extension UILabel {
    
    ///设置font
    @discardableResult
    open func set(font: UIFont?) -> Self {
        
        self.font = font
        
        return self
    }
    
    ///设置textColor
    @discardableResult
    open func set(textColor: UIColor?) -> Self {
        
            self.textColor = textColor
        
        return self
    }
    
    ///设置textAlignment，默认居中
    @discardableResult
    open func set(textAlignment: NSTextAlignment?) -> Self {
        
            self.textAlignment = textAlignment ?? .center
        
        return self
    }
    
    ///设置numberOfLines，默认1行
    @discardableResult
    open func set(numberOfLines: Int?) -> Self {
        
            self.numberOfLines = numberOfLines ?? 1
        
        return self
    }
    
    ///设置text
    @discardableResult
    open func set(text: String?) -> Self {
        
            self.text = text
        
        return self
    }
    
    ///设置attributedText
    @discardableResult
    open func set(attributedText: NSAttributedString?) -> Self {
        
            self.attributedText = attributedText
        
        return self
    }
    
}


    
//MARK: -UITextView的基本属性
extension UITextView {
    
    ///设置font
    @discardableResult
    open func set(font: UIFont?) -> Self {
        
        self.font = font
        
        return self
    }
    
    ///设置textColor
    @discardableResult
    open func set(textColor: UIColor?) -> Self {
        
            self.textColor = textColor
        
        return self
    }
    
    ///设置textAlignment，默认left
    @discardableResult
    open func set(textAlignment: NSTextAlignment?) -> Self {
        
            self.textAlignment = textAlignment ?? .left
        
        return self
    }

    ///设置text
    @discardableResult
    open func set(text: String?) -> Self {
        
            self.text = text
        
        return self
    }
    
    ///设置attributedText
    @discardableResult
    open func set(attributedText: NSAttributedString?) -> Self {
        
            self.attributedText = attributedText
        
        return self
    }
}




//MARK: -UITextField的基本属性
extension UITextField {
    
    ///设置font
    @discardableResult
    open func set(font: UIFont?) -> Self {
        
        self.font = font
        
        return self
    }
    
    ///设置textColor
    @discardableResult
    open func set(textColor: UIColor?) -> Self {
        
            self.textColor = textColor
        
        return self
    }
    
    ///设置textAlignment，默认left
    @discardableResult
    open func set(textAlignment: NSTextAlignment?) -> Self {
        
            self.textAlignment = textAlignment ?? .left
        
        return self
    }

    ///设置text
    @discardableResult
    open func set(text: String?) -> Self {
        self.text = text
        return self
    }
    
    ///设置attributedText
    @discardableResult
    open func set(attributedText: NSAttributedString?) -> Self {
        
        self.attributedText = attributedText
        return self
    }
    
    
    @discardableResult
    open func setLeftView(frame:CGRect,color:UIColor?) ->Self{
        let view = UIView.init(frame: frame)
        view.backgroundColor = color
        self.leftView = view
        return self
    }
    
    @discardableResult
    open func setRightView(frame:CGRect,color:UIColor?) ->Self{
        let view = UIView.init(frame: frame)
        view.backgroundColor = color
        self.rightView = view
        return self
    }
}


//MARK: -UIButton的基本属性
extension UIButton {
    

    @discardableResult
    open func set(horizontalAlignment: UIControl.ContentHorizontalAlignment) -> Self {
        
            self.contentHorizontalAlignment = horizontalAlignment
        
        return self
    }
    
    @discardableResult
    open func set(verticalAlignment: UIControl.ContentVerticalAlignment) -> Self {
        
            self.contentVerticalAlignment = verticalAlignment
        
        return self
    }
    
    @discardableResult
    open func set(contentMode: UIView.ContentMode) -> Self {
        
            self.contentMode = .center
        
        return self
    }
    
    @discardableResult
    open func set(tapSelector: Selector, target: AnyObject) -> Self {
        
            self.addTarget(target, action: tapSelector, for: .touchUpInside)
        
        return self
    }
    
    @discardableResult
    open func set(titleEdges: UIEdgeInsets?) -> Self {
        
            if let titleEdges = titleEdges {
                self.titleEdgeInsets = titleEdges
            }
        
        return self
    }
    
    @discardableResult
    open func set(imageEdges: UIEdgeInsets?) -> Self {
        
            if let imageEdges = imageEdges {
                self.imageEdgeInsets = imageEdges
            }
        
        return self
    }
    
    @discardableResult
    open func set(title: String?, for state: UIControl.State = .normal) -> Self {
        
            self.setTitle(title, for: state)
        
        return self
    }
    
    @discardableResult
    open func set(titleColor: UIColor?, for state: UIControl.State = .normal) -> Self {
        
            self.setTitleColor(titleColor, for: state)
        
        return self
    }
    
    @discardableResult
    open func set(image: UIImage?, for state: UIControl.State = .normal) -> Self {
        
            self.setImage(image, for: state)
        
        return self
    }
    

    
    @discardableResult
    open func set(font: UIFont) -> Self {
        
            self.titleLabel?.font = font
        
        return self
    }
    
    
}


//MARK: -UIImageView的基本属性
extension UIImageView {
    
    @discardableResult
    open func set(contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    @discardableResult
    open func set(image: UIImage?) -> Self {
        self.image = image
        return self
    }
}

//MARK: -UICollectionView的基本属性
extension UICollectionView {
    
    @discardableResult
    open func set<Target0:UICollectionViewDelegate, Target1:UICollectionViewDataSource>(delegate: Target0?, dataSource: Target1?) -> Self {
        
            self.delegate = delegate
            self.dataSource = dataSource
        
        return self
    }
    
    @discardableResult
    open func set(regisCell: AnyClass) -> Self {
        
            self.register(regisCell, forCellWithReuseIdentifier: "\(regisCell)")
        
        return self
    }
    
}

extension UICollectionViewFlowLayout {
    
    @discardableResult
    open func set(minimumLineSpacing:CGFloat) -> Self {
        self.minimumLineSpacing = minimumLineSpacing
        return self
    }
    
    @discardableResult
    open func set(minimumInteritemSpacing:CGFloat) -> Self {
        self.minimumInteritemSpacing = minimumInteritemSpacing
        return self
    }
    
    @discardableResult
    open func set(itemSize:CGSize) -> Self {
        self.itemSize = itemSize
        return self
    }
    
    @discardableResult
    open func set(scrollDirection:UICollectionView.ScrollDirection) -> Self {
        self.scrollDirection = scrollDirection
        return self
    }
    
    @discardableResult
    open func set(sectionInset:UIEdgeInsets) -> Self {
        self.sectionInset = sectionInset
        return self
    }
}


//MARK: -UITableView的基本属性
extension UITableView {
    
    @discardableResult
    open func set<Target0:UITableViewDelegate, Target1:UITableViewDataSource>(delegate: Target0?, dataSource: Target1?) -> Self {
        
            self.delegate = delegate
            self.dataSource = dataSource
        
        return self
    }
    
    @discardableResult
    open func set(removeDelgate: Bool, removeDataSource: Bool) -> Self {
        if removeDelgate {
            self.delegate = nil
        }
        if removeDataSource {
            self.dataSource = nil
        }
        return self
    }
    
    @discardableResult
    open func set(regisCell: AnyClass) -> Self {
        
            self.register(regisCell, forCellReuseIdentifier: "\(regisCell)")
        
        return self
    }
    
    @discardableResult
    open func set(separatorColor:UIColor?) -> Self {
        self.separatorColor = separatorColor
        return self
    }
    
    @discardableResult
    open func set(separatorStyle:UITableViewCell.SeparatorStyle) -> Self {
        self.separatorStyle = separatorStyle
        return self
    }

    @discardableResult
    open func set(separatorInset:UIEdgeInsets) -> Self {
        self.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    open func set(rowHeight:CGFloat) -> Self {
        self.rowHeight = rowHeight
        return self
    }
    
    @discardableResult
    open func set(estimatedRowHeight:CGFloat) -> Self {
        self.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    @discardableResult
    open func set(estimatedSectionHeaderHeight:CGFloat) -> Self {
        self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    @discardableResult
    open func set(estimatedSectionFooterHeight:CGFloat) -> Self {
        self.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
}





