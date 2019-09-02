
// 1、复制
//2、插入
class Solution {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else{
            return nil
        }
        let newRoot = TreeNode.init(root.val)
        copyNode(root: newRoot,copyedNode: root)
        insertNode(root: newRoot, val: val)
        return newRoot
    }
    
    func copyNode(root: TreeNode, copyedNode: TreeNode ) {
        if let left = copyedNode.left {
            root.left = TreeNode.init(left.val)
            copyNode(root: root.left!, copyedNode: left)
        }
        if let right = copyedNode.right {
            root.right = TreeNode.init(right.val)
            copyNode(root: root.right!, copyedNode: right)
        }
    }
    
    func insertNode(root: TreeNode,  val: Int){
        if root.val > val {
            if let left = root.left{
                insertNode(root: left, val: val)
            }else{
                root.left = TreeNode.init(val)
            }
        }else{
            if let right = root.right{
                insertNode(root: right, val: val)
            }else{
                root.right = TreeNode.init(val)
            }
        }
    }
}
