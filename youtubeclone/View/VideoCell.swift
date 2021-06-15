import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class VideoCell: BaseCell {
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
//        imageView.backgroundColor = .blue
        imageView.image = UIImage(named: "taylor_swift_blank_space")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        
        
        return imageView
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
//        imageView.backgroundColor = .green
        imageView.image = UIImage(named: "taylor_swift_profile")
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
//        label.backgroundColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Taylor Swift - Blank Space"
        return label
    }()
    
    let subtitleTextView: UITextView = {
        let textView = UITextView()
//        textView.backgroundColor = .red
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "TaylorSwiftVEVO • 1,604,685,524,345 views • 2 years ago"
        textView.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        textView.textColor = .lightGray

        return textView
    }()
    
    let separatorView: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        return view
    }()
    
    override func setupViews(){
        
        addSubview(thumbnailImageView)
        addSubview(separatorView)
        addSubview(profileImageView)
        addSubview(titleLabel)
        addSubview(subtitleTextView)

        
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
        
        addConstraintsWithFormat(format: "H:|-16-[v0(44)]", views: profileImageView)

        //vertical constraints
        addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView, profileImageView,separatorView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: separatorView)
        
        //top Contraint
        addConstraint(NSLayoutConstraint(item: titleLabel,
                                         attribute: .top,
                                         relatedBy: .equal,
                                         toItem: thumbnailImageView,
                                         attribute: .bottom,
                                         multiplier: 1,
                                         constant: 8))
        //left Contraint
        addConstraint(NSLayoutConstraint(item: titleLabel,
                                         attribute: .left,
                                         relatedBy: .equal,
                                         toItem: profileImageView,
                                         attribute: .right,
                                         multiplier: 1,
                                         constant: 8))
        //right Contraint
        addConstraint(NSLayoutConstraint(item: titleLabel,
                                         attribute: .right,
                                         relatedBy: .equal,
                                         toItem: thumbnailImageView,
                                         attribute: .right,
                                         multiplier: 1,
                                         constant: 0))
        //height
        addConstraint(NSLayoutConstraint(item: titleLabel,
                                         attribute: .height,
                                         relatedBy: .equal,
                                         toItem: self,
                                         attribute: .height,
                                         multiplier: 0,
                                         constant: 20))
        
        
        //top Contraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView,
                                         attribute: .top,
                                         relatedBy: .equal,
                                         toItem: titleLabel,
                                         attribute: .bottom,
                                         multiplier: 1,
                                         constant: 4))
        //left Contraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView,
                                         attribute: .left,
                                         relatedBy: .equal,
                                         toItem: profileImageView,
                                         attribute: .right,
                                         multiplier: 1,
                                         constant: 8))
        //right Contraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView,
                                         attribute: .right,
                                         relatedBy: .equal,
                                         toItem: thumbnailImageView,
                                         attribute: .right,
                                         multiplier: 1,
                                         constant: 0))
        //height
        addConstraint(NSLayoutConstraint(item: subtitleTextView,
                                         attribute: .height,
                                         relatedBy: .equal,
                                         toItem: self,
                                         attribute: .height,
                                         multiplier: 0,
                                         constant: 30))
        
    }
}
