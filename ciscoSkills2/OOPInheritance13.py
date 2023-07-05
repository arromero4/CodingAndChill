'''
The diamond problem
The second example of the spectrum of issues that can possibly arise from multiple inheritance is illustrated by a classic problem named the diamond problem. The name reflects the shape of the inheritance diagram - take a look at the picture.
there is the top-most superclass named A;

there are two subclasses derived from A: B and C;

and there is also the bottom-most subclass named D, derived from B and C (or C and B, as these two variants mean different things in Python)
Can you see the diamond there?


'''
class Top:
    def m_top(self):
        print("top")


class Middle_Left(Top):
    def m_middle(self):
        print("middle_left")


class Middle_Right(Top):
    def m_middle(self):
        print("middle_right")


class Bottom(Middle_Left, Middle_Right):
	def m_bottom(self):
		print("bottom")


object = Bottom()
object.m_bottom()
object.m_middle()
object.m_top()
    