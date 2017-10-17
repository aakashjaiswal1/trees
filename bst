import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

/**
 * Created by sky on 16/10/17.
 * HELLO BUDDY.
 * people die if they are killed.
 * aakashjaiswal@hotmail.co.in
 * aakashjaiswal.connect@gmail.com
 * www.github.com/aakashjaiswal1
 * you need to hate college to be able to
 * succeed in life.
 * college programming sucks so i am here.
 * :D
 * college-MUJ-
 * year-just a no 2ND BTW.
 */
public class BINARYTREE {
    public static class BinaryTreeNode{
        public int data;
        public BinaryTreeNode left,right;
        public BinaryTreeNode(int data){
            this.left=null;
            this.right=null;
            this.data=data;
        }
        public int data(){
            return data;
        }
        public void setData(int data){
            this.data=data;
        }
        public BinaryTreeNode getLeft(){
            return this.left;
        }
        public BinaryTreeNode getRight(){
            return this.right;
        }
        public void setLeft(BinaryTreeNode node){
            this.left=node;
        }
        public void setRight(BinaryTreeNode node){
            this.right=node;
        }
        public ArrayList<Integer> perOrderI(BinaryTreeNode root){
            ArrayList<Integer> res=new ArrayList<>();
            if (root==null)
                return res;
            Stack<BinaryTreeNode> s=new Stack<>();
            s.push(root);
            while (!s.isEmpty()){
                BinaryTreeNode cc=s.pop();
                res.add(cc.data);
                if (cc.right!=null)
                    s.add(cc.right);

                if (cc.left!=null)
                    s.add(cc.left);
            }
            return res;
        }
        public ArrayList<Integer> inOrderI(BinaryTreeNode root){
            ArrayList<Integer> res=new ArrayList<>();
            Stack<BinaryTreeNode> s=new Stack<>();
            BinaryTreeNode currentNode=root;
            boolean done=false;
            while (!done){
                if (currentNode!=null){
                    s.push(currentNode);
                    currentNode=currentNode.left;
                }else {
                    if (s.isEmpty()){
                        done=true;
                    } else {
                      currentNode=s.pop();
                      res.add(currentNode.data);
                      currentNode=currentNode.right;
                    }
                }
            }
            return res;
        }
        public ArrayList<Integer> postOrderI(BinaryTreeNode root){
           ArrayList<Integer> res=new ArrayList<>();
           if (root==null){
               return res;
           }
           Stack<BinaryTreeNode> s=new Stack<>();
           s.push(root);
           BinaryTreeNode prev=null;
           while (!s.isEmpty()){
               BinaryTreeNode curr=s.peek();
               if (prev==null||prev.left==curr||prev.right==curr){
                   if (curr.left!=null)
                       s.push(curr.left);
                   if (curr.right!=null)
                       s.push(curr.right);
               }else if (curr.left==prev){
                   if (curr.right!=null)
                       s.push(curr.right);
               }else {
                   res.add(curr.data);
                   s.pop();
               }
               prev=curr;
           }
           return res;
        }
    }
        public ArrayList<ArrayList<Integer>> levelOrder(BinaryTreeNode root){
        ArrayList<ArrayList<Integer>> res=new ArrayList<>();
        if (root==null)
            return res;
            Queue<BinaryTreeNode> q=new LinkedList<>();
            q.offer(root);
            q.offer(null);
            ArrayList<Integer> curr=new ArrayList<>();
            while (!q.isEmpty()){
                BinaryTreeNode tmp=q.poll();
                if (tmp!=null){
                    curr.add(tmp.data);
                    if (tmp.left!=null)
                        q.offer(tmp.left);
                    if (tmp.right!=null)
                        q.offer(tmp.right);
                }else {
                        ArrayList<Integer> c_curr=new ArrayList<>(curr);
                        res.add(c_curr);
                        curr.clear();
                        if (!q.isEmpty())
                            q.offer(null);
                }
            }
            return res;
        }
        public ArrayList<ArrayList<Integer>> levelOrderI(BinaryTreeNode root){
            ArrayList<ArrayList<Integer>> res=new ArrayList<>();
            if (root==null)
                return res;
            Queue<BinaryTreeNode> q=new LinkedList<>();
            q.offer(root);
            q.offer(null);
            ArrayList<Integer> curr=new ArrayList<>();
            while (!q.isEmpty()){
                BinaryTreeNode tmp=q.poll();
                if (tmp!=null){
                    curr.add(tmp.data);
                    if (tmp.left!=null)
                        q.offer(tmp.left);
                    if (tmp.right!=null)
                        q.offer(tmp.right);
                }else {
                    ArrayList<Integer> c_curr=new ArrayList<>(curr);
                    res.add(c_curr);
                    curr.clear();
                    if (!q.isEmpty())
                        q.offer(null);
                }
            }
            return res;
        }
        public ArrayList<ArrayList<Integer>> levelOrdern(BinaryTreeNode root){
            ArrayList<ArrayList<Integer>> res=new ArrayList<>();
            if (root==null)
                return res;
            Queue<BinaryTreeNode> q=new LinkedList<>();
            q.offer(root);
            q.offer(null);
            ArrayList<Integer> curr=new ArrayList<>();
            while (!q.isEmpty()){
                BinaryTreeNode tmp=q.poll();
                if (tmp!=null){
                    curr.add(tmp.data);
                    if (tmp.left!=null)
                        q.add(tmp.left);
                    if (tmp.right!=null)
                        q.add(tmp.right);
                }else {
                    ArrayList<Integer> c_curr=new ArrayList<>(curr);
                    curr.clear();
                    res.add(c_curr);
                    if (!q.isEmpty())
                        q.add(null);
                }
            }
            return res;
        }
      ////////~~~~~~~~~~~~~~`
        public ArrayList<Integer> preorderI(BinaryTreeNode root){
            ArrayList<Integer> res=new ArrayList<>();
            if (root==null)
                return res;
            Stack<BinaryTreeNode> s=new Stack<>();
            s.push(root);
            while (!s.isEmpty()){
                BinaryTreeNode tmp=s.pop();
                res.add(tmp.data);
                if (tmp.right!=null)
                    s.push(tmp.right);
                if (tmp.left!=null)
                    s.push(tmp.left);
            }
            return res;
        }
        public ArrayList<Integer> inorerI(BinaryTreeNode root){
            ArrayList<Integer> res=new ArrayList<>();
            boolean done=false;
            BinaryTreeNode currentnode=root;
            Stack<BinaryTreeNode> s=new Stack<>();
            while (!done){
                if (currentnode!=null){
                    s.push(currentnode);
                    currentnode=currentnode.left;
                }else{
                    if (s.isEmpty())
                        done=true;
                    else {
                        currentnode=s.pop();
                        res.add(currentnode.data);
                        currentnode=currentnode.right;
                    }
                }
            }
            return res;
        }
        public ArrayList<Integer> postorderI(BinaryTreeNode root){
            ArrayList<Integer> res=new ArrayList<>();
            if (root==null)
                return res;
            Stack<BinaryTreeNode> s=new Stack<>();
            BinaryTreeNode prev=null;
            s.push(root);
            while (!s.isEmpty()){
                BinaryTreeNode curr=s.peek();
                if (prev==null||prev.left==curr||prev.right==curr){
                    if (curr.left!=null)
                        s.push(curr.left);
                    else if (curr.right!=null)
                        s.push(curr.right);
                }else {
                    if (curr.left==prev){
                        s.add(curr.right);
                        }
                        else {
                        res.add(curr.data);
                        s.pop();
                    }
                    prev=curr;
                }
            }
            return res;
        }
        public ArrayList<ArrayList<Integer>> levelorder(BinaryTreeNode root){
            ArrayList<ArrayList<Integer>> res=new ArrayList<>();
            if (root==null)
                return res;
            Queue<BinaryTreeNode> q=new LinkedList<>();
            q.offer(root);
            q.offer(null);
            ArrayList<Integer> curr=new ArrayList<>();
            while (!q.isEmpty()){
                BinaryTreeNode tmp=q.poll();
                if (tmp!=null){
                    curr.add(tmp.data);
                    if (tmp.left!=null)
                        q.offer(tmp.left);
                    if (tmp.right!=null)
                        q.offer(tmp.right);
                }else {
                    ArrayList<Integer> c_curr=new ArrayList<>(curr);
                    curr.clear();
                    res.add(c_curr);
                    if (!q.isEmpty()){
                        q.offer(null);
                    }
                }
            }
            return res;
        }




    //////////~~~~~~~~~~~~~~~

        //q1>fnd max element in a binary tree

        //a1
        //approach 1 using recursion
    public int max(BinaryTreeNode root){
            int MaxVal=Integer.MIN_VALUE;
            if (root!=null){
                int left_max=max(root.left);
                int right_max=max(root.right);
                if (left_max>right_max)
                    MaxVal=left_max;
                else
                    MaxVal=right_max;
                if (root.data>MaxVal)
                    MaxVal=root.data;
            }
            return MaxVal;
    }
    //q2  write an iterative code for the above logic
    public int maxInBinaryTreeLevelOrder(BinaryTreeNode root){
        if (root==null)
            return Integer.MIN_VALUE;
        int max=Integer.MIN_VALUE;
        Queue<BinaryTreeNode> q=new LinkedList<>();
        q.offer(root);
        while (!q.isEmpty()){
            BinaryTreeNode tmp=q.poll();
            if (tmp.data>max){
                max=tmp.data;
            }

                if (tmp.getLeft()!=null)
                    q.offer(tmp.getLeft());
                if (tmp.getRight()!=null)
                    q.offer(tmp.getRight());
            }
        return max;
    }
    //q3 give an algo to search an element in an binary tree

    public static boolean findintBT(BinaryTreeNode root,int data){
        if (root==null)
            return false;
        if (root.data==data)
            return true;
        return (findintBT(root.left,data)||(findintBT(root.right,data)));
    }
    //q4 give an algo for searching in an binary tree without recurtion
    public boolean FindinBT(BinaryTreeNode root,int data){
        if (root==null)
            return false;
        Queue<BinaryTreeNode> q=new LinkedList<>();
        q.offer(root);
        while (!q.isEmpty()){
            BinaryTreeNode tmp=q.poll();
            if (tmp.data==data){
                return true;
            }
            if (tmp!=null){
                if (tmp.getLeft()!=null)
                    q.offer(tmp.getLeft());
                if (tmp.right!=null)
                    q.offer(tmp.getRight());
            }
        }
        return false;
    }
    //q5 write an code to insert an element into a binary tree
    //level order only
    public BinaryTreeNode insertL(BinaryTreeNode root,int data){
        if (root==null)
            return null;
        Queue<BinaryTreeNode> q=new LinkedList<>();
        q.offer(root);
        while (!q.isEmpty()) {
            BinaryTreeNode tmp = q.poll();
            if (tmp != null) {
                if (tmp.left != null) {
                    q.offer(tmp.left);
                }else {
                    tmp.left=new BinaryTreeNode(data);
                    return root;
                }
                if (tmp.right!=null){
                    q.offer(tmp.getRight());
                }else {
                    tmp.right=new BinaryTreeNode(data);
                    return root;
                }
            }
        }
        return root;
    }
    //q5 part B  write an recursive code to implement level order insertion

            //todo





    public static void main(String[] args) {
        BinaryTreeNode root=new BinaryTreeNode(3);
        root.right=new BinaryTreeNode(3);
        root.left=new BinaryTreeNode(3);
        root.right.right=new BinaryTreeNode(4);
       ArrayList<Integer> al= root.inOrderI(root);
        System.out.println(al);
    }

}
