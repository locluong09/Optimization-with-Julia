K = 3
N = 100
dp = [[0] * (K + 1) for i in range(N + 1)]

for m in range(1, N + 1):
	for k in range(1, K + 1):
		dp[m][k] = dp[m - 1][k - 1] + dp[m - 1][k] + 1
		# print(dp[m-1][k-1])
		# print(dp[m-1][k])
		# print(dp[m][k])
		# print(dp[0])
	print(dp[m])
	if dp[m][k] >= N:
		print(m)
		break