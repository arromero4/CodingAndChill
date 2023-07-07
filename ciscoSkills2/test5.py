def mayorDiferencia(arr):
    if len(arr) < 2:
        return 0
    else:
        min_num = arr[0]
        max_diff = arr[1] - arr[0]
        for i in range(1, len(arr)):
            if arr[i] < min_num:
                min_num = arr[i]
            elif arr[i] - min_num > max_diff:
                max_diff = arr[i] - min_num
        return max_diff
print(mayorDiferencia([1, 1, 4]))  # 3
print(mayorDiferencia([9, 8]))  # 1
print(mayorDiferencia([6, 22, 16, 29, 23]))  # 23
print(mayorDiferencia([28, 16, 28, 11, 14, 26, 23, 25, 17, 3, 22, 23, 23, 10]))  # 25