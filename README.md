# knights-travails
[Project: Knights Travails](https://www.theodinproject.com/lessons/ruby-knights-travails)

---

# Post-project Review

I don't know how I should feel about this implementation. It could definitely be optimized by implementing a check of previous moves, but it calculates the moves so quickly that I feel like it would be a premature optimization at this point. The max number of moves I found was 6 or 7, so the scope of the method is rather small, unsurprisingly. Either way, I don't think this is a very scalable algorithm.

At the end of the day, it meets the requirements of the assignment, so I'm calling it good.

---

# Brainstorming

I don't even know where to start.

There is a max of 8 possible moves for the knight at any given time.

Since this is similar (but not identical) to a binary tree, I assume the setup would involve the current placement of the knight being the root and all possible moves being a child node.

This could be a recursive method to traverse the tree until the desired vertex is found.

I don't think I'd want to do depth first since any given path could go on a lot longer than the actual shortest path. Doing a breadth first traversal might be better. I have no idea.