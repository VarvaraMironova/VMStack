Pod::Spec.new do |spec|
  spec.name         = 'VMStack'
  spec.version      = '1.0.3'
  spec.summary      = 'VMStack is a linked list stack implementation in Swift.'
  spec.description  = 'VMStack is a lightweight linked list of Any type of elements. VMSortableStack is a stack of numeric elements. Sorting is implemented through a recursive insertion'
  spec.homepage     = 'https://github.com/VarvaraMironova/VMStack.git'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = 'Varvara Myronova'
  spec.platform     = :ios, '8.0'
  spec.source       = { :git => 'https://github.com/VarvaraMironova/VMStack.git', :tag => 'v1.0.3' }
  spec.source_files  = 'Sources/*.swift'
  spec.swift_version = '5.2'
end
