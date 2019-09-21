
class A:
	def start(self):
		print("start...")
	def stop(self):
		print("stop...")
	def run(self):
		self.start()
		self.stop()

class B(A):
	def start(self):
		print("B start...")
	def stop(self):
		print("B stop...")

def main():
	b = B()
	b.run()

if __name__ == "__main__":
	main()