fn main() {
    name := 'Bob'
    println('Hello, $name!')
    age := 20
    large_number := i64(99999)
    println(name)
    print(age)
    print(large_number)

    println('hello world')
    println(add(77, 53))
    println(sub(100, 50))


    mut nums := [1, 2, 3]
    nums << 4
    nums << [5, 6, 7]
    println(nums.len)
    println(5 in nums)

    mut m := map[string]int
    m['one'] = 1
    m['two'] = 2
    println(m['one'])
    println(m['bad_key'])
    println('bad_key' in m)
    m.delete('two')
    m.delete('o')

    println('if:')
    num := 777
    s := if num % 2 == 0 { 'even' } else { 'odd' }
    println(s)

    os := 'windows'
    print('V is running on ')
    match os {
        'darwin' => { println('macOS.') }
        'linux' => { println('Linux.')}
        else => { println(os)} 
    }
}

fn add(x int, y int) int {
    return x + y
}

fn sub(x, y int) int {
    return x - y
}