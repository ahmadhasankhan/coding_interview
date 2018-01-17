package linkedlists;

/**
 * Created by ahmadhassan on 9/30/17.

 */

// The code below implements a very basic singly linked list.
public class Node {
   Node next = null;
   int data;

   public Node(int d){
       data = d;
   }

   void appendToTail(int d){
       Node end = new Node(d);
       Node n = this;
       while(n.next != null){
           n = n.next;
       }

       n.next = end;
   }
}
