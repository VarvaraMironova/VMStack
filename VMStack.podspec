Pod::Spec.new do |spec|
  spec.name         = "VMStack"
  spec.version      = "1.0.0"
  spec.summary      = "VMStack is a linked list stack implementation in Swift."
  spec.description  = "VMStack is a lightweight linked list of Any type of elements. VMSortableStack is a stack of numeric elements. Sorting is implemented through a recursive insertion."
  spec.homepage     = "https://github.com/VarvaraMironova/VMStack.git"
  spec.license      = "MIT"
  spec.author             = "Varvara Myronova"
  spec.social_media_url   = "https://linkedin.com/in/varvara-mironova-29381b114/"
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/VarvaraMironova/VMStack.git", :tag => "v1.0.0" }
  spec.source_files  = "VMStack", "VMSortableStack"
end
