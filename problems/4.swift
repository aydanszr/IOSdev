func fib(_ N: Int) -> Int {
if (N == 0){
    return 0
} else if (N == 1) {
    return 1
}
return fib(N-1) + fib(N-2)
}


print(fib(2))
print(fib(3))
print(fib(4))

